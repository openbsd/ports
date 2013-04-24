/*
 * Copyright (c) 2008 Jacob Meuser <jakemsr@sdf.lonestar.org>
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

#include <stdio.h>
#include <stdlib.h>

#include "config.h"

#include <sndio.h>
#include "audio_in.h"
#include "mp_msg.h"
#include "help_mp.h"

int ai_sndio_setup(audio_in_t *ai)
{
    struct sio_par par;

    sio_initpar(&par);

    par.bits = 16;
    par.sig = 1;
    par.le = 1;
    par.rchan = ai->req_channels;
    par.rate = ai->req_samplerate;
    par.appbufsz = ai->req_samplerate;	/* 1 sec */

   if (!sio_setpar(ai->sndio.hdl, &par) || !sio_getpar(ai->sndio.hdl, &par)) {
	mp_msg(MSGT_TV, MSGL_ERR, "could not configure sndio audio");
	return -1;
    }

    ai->channels = par.rchan;
    ai->samplerate = par.rate;
    ai->samplesize = par.bits;
    ai->bytes_per_sample = par.bps;
    ai->blocksize = par.round * par.bps;

    return 0;
}

int ai_sndio_init(audio_in_t *ai)
{
    int err;

    if ((ai->sndio.hdl = sio_open(ai->sndio.device, SIO_REC, 0)) == NULL) {
	mp_msg(MSGT_TV, MSGL_ERR, "could not open sndio audio");
	return -1;
    }

    err = ai_sndio_setup(ai);

    return err;
}
