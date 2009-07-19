/*	$OpenBSD: nsSound.cpp,v 1.1 2009/07/19 15:30:16 martynas Exp $	*/

/*
 * Copyright (c) 2009 Martynas Venckus <martynas@openbsd.org>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */

/* ***** BEGIN LICENSE BLOCK *****
 * Version: MPL 1.1/GPL 2.0/LGPL 2.1
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is mozilla.org code.
 *
 * The Initial Developer of the Original Code is
 * Netscape Communications Corporation.
 * Portions created by the Initial Developer are Copyright (C) 2000
 * the Initial Developer. All Rights Reserved.
 *
 * Contributor(s):
 *   Stuart Parmenter <pavlov@netscape.com>
 *
 * Alternatively, the contents of this file may be used under the terms of
 * either the GNU General Public License Version 2 or later (the "GPL"), or
 * the GNU Lesser General Public License Version 2.1 or later (the "LGPL"),
 * in which case the provisions of the GPL or the LGPL are applicable instead
 * of those above. If you wish to allow use of your version of this file only
 * under the terms of either the GPL or the LGPL, and not to allow others to
 * use your version of this file under the terms of the MPL, indicate your
 * decision by deleting the provisions above and replace them with the notice
 * and other provisions required by the GPL or the LGPL. If you do not delete
 * the provisions above, a recipient may use your version of this file under
 * the terms of any one of the MPL, the GPL or the LGPL.
 *
 * ***** END LICENSE BLOCK ***** */

#include <string.h>

#include "nscore.h"
#include "plstr.h"
#include "prlink.h"

#include "nsSound.h"

#include "nsIURL.h"
#include "nsIFileURL.h"
#include "nsNetUtil.h"
#include "nsCOMPtr.h"
#include "nsAutoPtr.h"
#include "nsString.h"

#include <prthread.h>
#include <sndio.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <gtk/gtk.h>

#define WAV_MIN_LENGTH 44

typedef struct {
    struct sio_hdl *sndio_hdl;
    void *audio;
    size_t audio_len;
} SioThreadData;

typedef struct _ca_context ca_context;

/* used to play the sounds from the find symbol call */
typedef struct sio_hdl * (*SioOpenType)(char *, unsigned, int);
typedef void (*SioCloseType)(struct sio_hdl *);
typedef int (*SioSetparType)(struct sio_hdl *, struct sio_par *);
typedef int (*SioGetparType)(struct sio_hdl *, struct sio_par *);
typedef int (*SioStartType)(struct sio_hdl *);
typedef size_t (*SioWriteType)(struct sio_hdl *, void *, size_t);
typedef int (*SioEofType)(struct sio_hdl *);
typedef void (*SioInitparType)(struct sio_par *);

/* used to find and play common system event sounds */
typedef int (*ca_context_create_fn) (ca_context **);
typedef int (*ca_context_destroy_fn) (ca_context *);
typedef int (*ca_context_play_fn) (ca_context *c, uint32_t id, ...);
typedef int (*ca_context_change_props_fn) (ca_context *c, ...);

static ca_context_create_fn ca_context_create;
static ca_context_destroy_fn ca_context_destroy;
static ca_context_play_fn ca_context_play;
static ca_context_change_props_fn ca_context_change_props;

static PRLibrary *sndio_lib = nsnull;
static PRLibrary *canberra_lib = nsnull;

NS_IMPL_ISUPPORTS2(nsSound, nsISound, nsIStreamLoaderObserver)

////////////////////////////////////////////////////////////////////////
static void
RunSioThread(void *arg)
{
    SioThreadData *td;

    td = (SioThreadData *)arg;

    /* Close the stream if fail. */
    SioCloseType SioClose =
        (SioCloseType) PR_FindFunctionSymbol(sndio_lib, "sio_close");

    /* Write stream. */
    SioWriteType SioWrite =
        (SioWriteType) PR_FindFunctionSymbol(sndio_lib, "sio_write");
    SioEofType SioEof =
        (SioEofType) PR_FindFunctionSymbol(sndio_lib, "sio_eof");
    if (!SioWrite || !SioEof) {
        if (SioClose)
            (*SioClose)(td->sndio_hdl);
        free(td->audio);
        free(td);
        return;
    }

    if ((*SioWrite)(td->sndio_hdl, (void *)td->audio,
        td->audio_len) == 0 && (*SioEof)(td->sndio_hdl)) {
        NS_WARNING("sio_write: couldn't write the stream");
    }

    if (SioClose)
        (*SioClose)(td->sndio_hdl);

    free(td->audio);
    free(td);
}

nsSound::nsSound()
{
    mInited = PR_FALSE;
}

nsSound::~nsSound()
{
}

NS_IMETHODIMP
nsSound::Init()
{
    /*
     * This function is designed so that no library is compulsory, and
     * one library missing doesn't cause the other(s) to not be used.
     */
    if (mInited)
        return NS_OK;

    mInited = PR_TRUE;

    if (!sndio_lib)
        sndio_lib = PR_LoadLibrary("libsndio.so");

    if (!canberra_lib) {
        canberra_lib = PR_LoadLibrary("libcanberra.so");
        if (canberra_lib) {
            ca_context_create = (ca_context_create_fn) PR_FindFunctionSymbol(
                canberra_lib, "ca_context_create");
            if (!ca_context_create) {
                PR_UnloadLibrary(canberra_lib);
                canberra_lib = nsnull;
            } else {
                ca_context_destroy = (ca_context_destroy_fn)
                    PR_FindFunctionSymbol(canberra_lib, "ca_context_destroy");
                ca_context_play = (ca_context_play_fn) PR_FindFunctionSymbol(
                    canberra_lib, "ca_context_play");
                ca_context_change_props = (ca_context_change_props_fn)
                    PR_FindFunctionSymbol(canberra_lib,
                    "ca_context_change_props");
            }
        }
    }

    return NS_OK;
}

/* static */ void
nsSound::Shutdown()
{
    if (sndio_lib) {
        PR_UnloadLibrary(sndio_lib);
        sndio_lib = nsnull;
    }
    if (canberra_lib) {
        PR_UnloadLibrary(canberra_lib);
        canberra_lib = nsnull;
    }
}

#define GET_WORD(s, i) (s[i+1] << 8) | s[i]
#define GET_DWORD(s, i) (s[i+3] << 24) | (s[i+2] << 16) | (s[i+1] << 8) | s[i]

NS_IMETHODIMP nsSound::OnStreamComplete(nsIStreamLoader *aLoader,
                                        nsISupports *context,
                                        nsresult aStatus,
                                        PRUint32 dataLen,
                                        const PRUint8 *data)
{
    struct sio_hdl *sndio_hdl;
    struct sio_par sndio_par;
    SioThreadData *td;
    PRUint32 samples_per_sec = 0, avg_bytes_per_sec = 0, chunk_len = 0;
    PRUint16 format, channels = 1, bits_per_sample = 0;
    const PRUint8 *audio = nsnull;
    size_t audio_len = 0;

    /* Print a load error on bad status, and return. */
    if (NS_FAILED(aStatus)) {
        return aStatus;
    }

    if (dataLen < 4) {
        NS_WARNING("Sound stream too short to determine its type");
        return NS_ERROR_FAILURE;
    }

    if (memcmp(data, "RIFF", 4)) {
#ifdef DEBUG
        printf("We only support WAV files currently.\n");
#endif
        return NS_ERROR_FAILURE;
    }

    if (dataLen <= WAV_MIN_LENGTH) {
        NS_WARNING("WAV files should be longer than 44 bytes.");
        return NS_ERROR_FAILURE;
    }

    PRUint32 i = 12;
    while (i + 7 < dataLen) {
        if (!memcmp(data + i, "fmt ", 4) && !chunk_len) {
            i += 4;

            /* length of the rest of this subblock (should be 16 for PCM data */
            chunk_len = GET_DWORD(data, i);
            i += 4;

            if (chunk_len < 16 || i + chunk_len >= dataLen) {
                NS_WARNING("Invalid WAV file: bad fmt chunk.");
                return NS_ERROR_FAILURE;
            }

            format = GET_WORD(data, i);
            i += 2;

            channels = GET_WORD(data, i);
            i += 2;

            samples_per_sec = GET_DWORD(data, i);
            i += 4;

            avg_bytes_per_sec = GET_DWORD(data, i);
            i += 4;

            /* block align */
            i += 2;

            bits_per_sample = GET_WORD(data, i);
            i += 2;

            /* we don't support WAVs with odd compression codes */
            if (chunk_len != 16)
                NS_WARNING("Extra format bits found in WAV. Ignoring");

            i += chunk_len - 16;
        } else if (!memcmp(data + i, "data", 4)) {
            i += 4;
            if (!chunk_len) {
                NS_WARNING("Invalid WAV file: no fmt chunk found");
                return NS_ERROR_FAILURE;
            }

            audio_len = GET_DWORD(data, i);
            i += 4;

            /* try to play truncated WAVs */
            if (i + audio_len > dataLen)
                audio_len = dataLen - i;

            audio = data + i;
            break;
        } else {
            i += 4;
            i += GET_DWORD(data, i);
            i += 4;
        }
    }

    if (!audio) {
        NS_WARNING("Invalid WAV file: no data chunk found");
        return NS_ERROR_FAILURE;
    }

    /* No audio data? well, at least the WAV was valid. */
    if (!audio_len)
        return NS_OK;

    /* Open up connection to sndio. */
    SioOpenType SioOpen =
        (SioOpenType) PR_FindFunctionSymbol(sndio_lib, "sio_open");
    if (!SioOpen)
        return NS_ERROR_FAILURE;

    sndio_hdl = SioOpen(NULL, SIO_PLAY, 0);
    if (sndio_hdl == NULL) {
        NS_WARNING("sio_open: couldn't open the stream");
        return NS_ERROR_FAILURE;
    }

    /* Close the stream if fail. */
    SioCloseType SioClose =
        (SioCloseType) PR_FindFunctionSymbol(sndio_lib, "sio_close");

    /* Initialize parameters structure. */
    SioInitparType SioInitpar =
        (SioInitparType) PR_FindFunctionSymbol(sndio_lib, "sio_initpar");
    if (!SioInitpar) {
        if (SioClose)
            (*SioClose)(sndio_hdl);
        return NS_ERROR_FAILURE;
    }

    (*SioInitpar)(&sndio_par);
    sndio_par.bits = bits_per_sample;
    sndio_par.le = SIO_LE_NATIVE;
    sndio_par.pchan = channels;
    sndio_par.rate = samples_per_sec;
    sndio_par.sig = (bits_per_sample == 8) ? 0 : 1;

    /* Set and get configuration set.
       Put the stream into writing state. */
    SioSetparType SioSetpar =
        (SioSetparType) PR_FindFunctionSymbol(sndio_lib, "sio_setpar");
    SioGetparType SioGetpar =
        (SioGetparType) PR_FindFunctionSymbol(sndio_lib, "sio_getpar");
    SioStartType SioStart =
        (SioStartType) PR_FindFunctionSymbol(sndio_lib, "sio_start");
    if (!SioSetpar || !SioGetpar || !SioStart) {
        if (SioClose)
            (*SioClose)(sndio_hdl);
        return NS_ERROR_FAILURE;
    }

    if (!(*SioSetpar)(sndio_hdl, &sndio_par) ||
        !(*SioGetpar)(sndio_hdl, &sndio_par) || !(*SioStart)(sndio_hdl)) {
        NS_WARNING("sio_setpar: couldn't set configuration");
        if (SioClose)
            (*SioClose)(sndio_hdl);
        return NS_ERROR_FAILURE;
    }

    /* Check configuration. */
    if (sndio_par.bits != bits_per_sample || sndio_par.pchan != channels ||
        sndio_par.rate != samples_per_sec) {
        NS_WARNING("configuration is not available");
        if (SioClose)
            (*SioClose)(sndio_hdl);
        return NS_ERROR_FAILURE;
    }

    if ((td = (SioThreadData *) malloc(sizeof(SioThreadData))) == NULL ||
        (td->audio = malloc(audio_len * sizeof(*audio))) == NULL) {
        if (SioClose)
            (*SioClose)(sndio_hdl);
        return NS_ERROR_FAILURE;
    }

    td->sndio_hdl = sndio_hdl;
    td->audio_len = audio_len;
    memcpy(td->audio, audio, audio_len);

    PR_CreateThread(PR_SYSTEM_THREAD, RunSioThread, td, PR_PRIORITY_NORMAL,
        PR_GLOBAL_THREAD, PR_UNJOINABLE_THREAD, 0);

    return NS_OK;
}

NS_METHOD nsSound::Beep()
{
    ::gdk_beep();
    return NS_OK;
}

NS_METHOD nsSound::Play(nsIURL *aURL)
{
    nsresult rv;

    if (!mInited)
        Init();

    if (!sndio_lib)
	    return NS_ERROR_FAILURE;

    nsCOMPtr<nsIStreamLoader> loader;
    rv = NS_NewStreamLoader(getter_AddRefs(loader), aURL, this);

    return rv;
}

nsresult nsSound::PlaySystemEventSound(const nsAString &aSoundAlias)
{
    if (!canberra_lib)
        return NS_OK;
  
    /*
     * Do we even want alert sounds?
     * If so, what sound theme are we using?
     */
    GtkSettings* settings = gtk_settings_get_default();
    gchar* sound_theme_name = nsnull;

    if (g_object_class_find_property(G_OBJECT_GET_CLASS(settings),
        "gtk-sound-theme-name") && g_object_class_find_property(
        G_OBJECT_GET_CLASS(settings), "gtk-enable-event-sounds")) {
        gboolean enable_sounds = TRUE;
        g_object_get(settings, "gtk-enable-event-sounds", &enable_sounds,
            "gtk-sound-theme-name", &sound_theme_name, NULL);

        if (!enable_sounds) {
            g_free(sound_theme_name);
            return NS_OK;
        }
     }

    /*
     * This allows us to avoid race conditions with freeing the
     * context by handing that responsibility to Glib, and still
     * use one context at a time.
     */
    ca_context* ctx = nsnull;
    static GStaticPrivate ctx_static_private = G_STATIC_PRIVATE_INIT;
    ctx = (ca_context*) g_static_private_get(&ctx_static_private);
    if (!ctx) {
        ca_context_create(&ctx);
        if (!ctx) {
            g_free(sound_theme_name);
            return NS_ERROR_OUT_OF_MEMORY;
        }

        g_static_private_set(&ctx_static_private, ctx, (GDestroyNotify)
            ca_context_destroy);
    }

    if (sound_theme_name) {
        ca_context_change_props(ctx, "canberra.xdg-theme.name",
            sound_theme_name, NULL);
        g_free(sound_theme_name);
    }

    if (aSoundAlias.Equals(NS_SYSSOUND_ALERT_DIALOG))
        ca_context_play(ctx, 0, "event.id", "dialog-warning", NULL);
    else if (aSoundAlias.Equals(NS_SYSSOUND_CONFIRM_DIALOG))
        ca_context_play(ctx, 0, "event.id", "dialog-question", NULL);
    else if (aSoundAlias.Equals(NS_SYSSOUND_MAIL_BEEP))
        ca_context_play(ctx, 0, "event.id", "message-new-email", NULL);

    return NS_OK;
}

NS_IMETHODIMP nsSound::PlaySystemSound(const nsAString &aSoundAlias)
{
    if (!mInited)
        Init();

    if (NS_IsMozAliasSound(aSoundAlias))
        return PlaySystemEventSound(aSoundAlias);

    nsresult rv;
    nsCOMPtr <nsIURI> fileURI;

    /* create a nsILocalFile and then a nsIFileURL from that */
    nsCOMPtr <nsILocalFile> soundFile;
    rv = NS_NewLocalFile(aSoundAlias, PR_TRUE,
                         getter_AddRefs(soundFile));
    NS_ENSURE_SUCCESS(rv,rv);

    rv = NS_NewFileURI(getter_AddRefs(fileURI), soundFile);
    NS_ENSURE_SUCCESS(rv,rv);

    nsCOMPtr<nsIFileURL> fileURL = do_QueryInterface(fileURI,&rv);
    NS_ENSURE_SUCCESS(rv,rv);

    rv = Play(fileURL);

    return rv;
}

