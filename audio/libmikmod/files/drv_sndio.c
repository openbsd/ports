/*
 * Copyright (c) 2009 Jacob Meuser <jakemsr@sdf.lonestar.org>
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

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include "mikmod_internals.h"

#ifdef DRV_SNDIO

#ifdef HAVE_UNISTD_H
#include <unistd.h>
#endif
#include <stdio.h>
#include <stdlib.h>

#include <sndio.h>

#define DEFAULT_FRAGSIZE 12

static struct sio_hdl *hdl;
static struct sio_par par;
static int fragsize = 1 << DEFAULT_FRAGSIZE;
static SBYTE *audiobuffer = NULL;

static void Sndio_CommandLine(CHAR *cmdline)
{
	CHAR *ptr;

	if ((ptr = MD_GetAtom("buffer", cmdline, 0))) {
		int buf = atoi(ptr);

		if (buf >= 7 && buf <= 17)
			fragsize = 1 << buf;

		free(ptr);
	}
}

static BOOL Sndio_IsThere(void)
{
	/* could try sio_open() ? */
	return 1;
}

static BOOL Sndio_Init(void)
{
	hdl = sio_open(NULL, SIO_PLAY, 0);
	if (hdl == NULL) {
		_mm_errno = MMERR_OPENING_AUDIO;
		return 1;
	}

	if (!(audiobuffer = (SBYTE *)_mm_malloc(fragsize)))
		return 1;

	sio_initpar(&par);
	par.bits = (md_mode & DMODE_16BITS) ? 16 : 8;
	par.pchan = (md_mode & DMODE_STEREO) ? 2 : 1;
	par.rate = md_mixfreq;
	par.le = SIO_LE_NATIVE;
	par.sig = par.bits == 8 ? 0 : 1;
	par.appbufsz = 4 * fragsize / SIO_BPS(par.bits) / par.pchan;

	if (!sio_setpar(hdl, &par) || !sio_getpar(hdl, &par)) {
		_mm_errno = MMERR_SUN_INIT;
		return 1;
	}

	/* Align to what the card gave us */
	md_mixfreq = par.rate;
	if (par.bits == 8)
		md_mode &= ~(DMODE_16BITS);
	else if (par.bits == 16)
		md_mode |= DMODE_16BITS;
	else {
		_mm_errno = MMERR_SUN_INIT;
		return 1;
	}
	if (par.pchan == 1)
		md_mode &= ~(DMODE_STEREO);
	else if (par.pchan == 2)
		md_mode |= DMODE_STEREO;
	else {
		_mm_errno = MMERR_SUN_INIT;
		return 1;
	}

	return VC_Init();
}

static void Sndio_Exit(void)
{
	VC_Exit();
	_mm_free(audiobuffer);
	if (hdl) {
		sio_close(hdl);
		hdl = NULL;
	}
}

static void Sndio_Update(void)
{
	int done;

	done = VC_WriteBytes((char *)audiobuffer, fragsize);
	sio_write(hdl, audiobuffer, done);
}

static void Sndio_Pause(void)
{
	int done;

	done = VC_SilenceBytes((char *)audiobuffer, fragsize);
	sio_write(hdl, audiobuffer, done);
}

static BOOL Sndio_PlayStart(void)
{
	if (!sio_start(hdl))
		return 1;

	return VC_PlayStart();
}

static void Sndio_PlayStop(void)
{
	//sio_stop(hdl);

	VC_PlayStop();
}

MIKMODAPI MDRIVER drv_sndio = {
	NULL,
	"Sndio Audio",
	"sndio audio driver v1.0",
	0, 255,
	"audio",

	Sndio_CommandLine,
	Sndio_IsThere,
	VC_SampleLoad,
	VC_SampleUnload,
	VC_SampleSpace,
	VC_SampleLength,
	Sndio_Init,
	Sndio_Exit,
	NULL,
	VC_SetNumVoices,
	Sndio_PlayStart,
	Sndio_PlayStop,
	Sndio_Update,
	Sndio_Pause,
	VC_VoiceSetVolume,
	VC_VoiceGetVolume,
	VC_VoiceSetFrequency,
	VC_VoiceGetFrequency,
	VC_VoiceSetPanning,
	VC_VoiceGetPanning,
	VC_VoicePlay,
	VC_VoiceStop,
	VC_VoiceStopped,
	VC_VoiceGetPosition,
	VC_VoiceRealVolume
};

#else

MISSING(drv_sndio);

#endif

/* ex:set ts=4: */
