/* im_sndio.c
 * - Raw PCM input from sndio audio subsystem
 *
 * $Id: im_sndio.c,v 1.2 2010/04/28 04:15:58 jakemsr Exp $
 *
 * by Jacob Meuser <jakemsr@sdf.lonestar.org>, based
 * on im_sun.c which is...
 * by Ciaran Anscomb <ciarana@rd.bbc.co.uk>, based
 * on im_oss.c which is...
 * Copyright (c) 2001 Michael Smith <msmith@labyrinth.net.au>
 *
 * This program is distributed under the terms of the GNU General
 * Public License, version 2. You may use, modify, and redistribute
 * it under the terms of this license. A copy should be included
 * with this source.
 */

#ifdef HAVE_CONFIG_H
 #include <config.h>
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <ogg/ogg.h>

#include "cfgparse.h"
#include "stream.h"
#include "inputmodule.h"
#include "metadata.h"

#include "im_sndio.h"

#define MODULE "input-sndio/"
#include "logging.h"

#define BUFSIZE 8192

static void close_module(input_module_t *mod)
{
    if(mod)
    {
        if(mod->internal)
        {
            im_sndio_state *s = mod->internal;
            if(s->hdl != NULL)
                sio_close(s->hdl);
            thread_mutex_destroy(&s->metadatalock);
            free(s);
        }
        free(mod);
    }
}

static int event_handler(input_module_t *mod, enum event_type ev, void *param)
{
    im_sndio_state *s = mod->internal;

    switch(ev)
    {
        case EVENT_SHUTDOWN:
            close_module(mod);
            break;
        case EVENT_NEXTTRACK:
            s->newtrack = 1;
            break;
        case EVENT_METADATAUPDATE:
            thread_mutex_lock(&s->metadatalock);
            if(s->metadata)
            {
                char **md = s->metadata;
                while(*md)
                    free(*md++);
                free(s->metadata);
            }
            s->metadata = (char **)param;
            s->newtrack = 1;
            thread_mutex_unlock(&s->metadatalock);
            break;
        default:
            LOG_WARN1("Unhandled event %d", ev);
            return -1;
    }

    return 0;
}

static void metadata_update(void *self, vorbis_comment *vc)
{
    im_sndio_state *s = self;
    char **md;

    thread_mutex_lock(&s->metadatalock);

    md = s->metadata;

    if(md)
    {
        while(*md)
            vorbis_comment_add(vc, *md++);
    }

    thread_mutex_unlock(&s->metadatalock);
}

/* Core streaming function for this module
 * This is what actually produces the data which gets streamed.
 *
 * returns:  >0  Number of bytes read
 *            0  Non-fatal error.
 *           <0  Fatal error.
 */
static int sndio_read(void *self, ref_buffer *rb)
{
    int result;
    im_sndio_state *s = self;

    rb->buf = malloc(BUFSIZE * s->par.bps * s->par.rchan);
    if(!rb->buf)
        return -1;
    result = sio_read(s->hdl, rb->buf, BUFSIZE * s->par.bps * s->par.rchan);

    rb->len = result;
    rb->aux_data = s->par.rate * s->par.rchan * s->par.bps;

    if(s->newtrack)
    {
        rb->critical = 1;
        s->newtrack = 0;
    }

    if(result == 0)
    {
        if(sio_eof(s->hdl))
        {
            LOG_ERROR0("Error reading from audio device");
            free(rb->buf);
            return -1;
        }
    }

    return rb->len;
}

input_module_t *sndio_open_module(module_param_t *params)
{
    input_module_t *mod = calloc(1, sizeof(input_module_t));
    im_sndio_state *s;
    module_param_t *current;
    char *device = NULL; /* default device */
    int sample_rate = 44100;
    int channels = 2;
    int use_metadata = 1; /* Default to on */

    mod->type = ICES_INPUT_PCM;
#ifdef WORDS_BIGENDIAN
    mod->subtype = INPUT_PCM_BE_16;
#else
    mod->subtype = INPUT_PCM_LE_16;
#endif
    mod->getdata = sndio_read;
    mod->handle_event = event_handler;
    mod->metadata_update = metadata_update;

    mod->internal = calloc(1, sizeof(im_sndio_state));
    s = mod->internal;

    thread_mutex_create(&s->metadatalock);

    current = params;

    while (current) {
        if (!strcmp(current->name, "rate"))
            sample_rate = atoi(current->value);
        else if (!strcmp(current->name, "channels"))
            channels = atoi(current->value);
        else if (!strcmp(current->name, "device"))
            device = current->value;
        else if (!strcmp(current->name, "metadata"))
            use_metadata = atoi(current->value);
        else if(!strcmp(current->name, "metadatafilename"))
            ices_config->metadata_filename = current->value;
        else
            LOG_WARN1("Unknown parameter %s for sndio module", current->name);
        current = current->next;
    }

    /* First up, lets open the audio device */
    if((s->hdl = sio_open(device, SIO_REC, 0)) == NULL) {
        LOG_ERROR0("Failed to open sndio device");
        goto fail;
    }

    /* Try and set up what we want */
    sio_initpar(&s->par);
    s->par.rate = sample_rate;
    s->par.rchan = channels; 
    s->par.bits = 16;
    s->par.sig = 1;
    s->par.le = SIO_LE_NATIVE;
    s->par.round = BUFSIZE;
    s->par.appbufsz = BUFSIZE * 4;

    if (!sio_setpar(s->hdl, &s->par) || !sio_getpar(s->hdl, &s->par)) {
        LOG_ERROR0("Failed to configure sndio device");
        goto fail;
    }

    /* Check all went according to plan */
    if (s->par.rate != sample_rate) {
        LOG_ERROR0("Couldn't set sampling rate");
        goto fail;
    }
    if (s->par.rchan != channels) {
        LOG_ERROR0("Couldn't set number of channels");
        goto fail;
    }
    if (s->par.bits != 16) {
        LOG_ERROR0("Couldn't set 16 bit precision");
        goto fail;
    }
    if (s->par.sig != 1) {
        LOG_ERROR0("Couldn't set signed linear encoding");
        goto fail;
    }
    if (s->par.le != SIO_LE_NATIVE) {
        LOG_ERROR0("Couldn't set proper endianness");
        goto fail;
    }

    if (!sio_start(s->hdl)) {
        LOG_ERROR0("Couldn't start sndio");
        goto fail;
    }

    /* We're done, and we didn't fail! */
    LOG_INFO2("Opened audio device for %d channel(s), %d Hz", 
            channels, sample_rate);

    if(use_metadata)
    {
        LOG_INFO0("Starting metadata update thread");
        if(ices_config->metadata_filename)
            thread_create("im_sndio-metadata", metadata_thread_signal, mod, 1);
        else
            thread_create("im_sndio-metadata", metadata_thread_stdin, mod, 1);
    }

    return mod;

fail:
    close_module(mod); /* safe, this checks for valid contents */
    return NULL;
}
