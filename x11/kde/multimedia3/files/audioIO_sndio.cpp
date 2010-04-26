/*
 * Copyright (c) 2010 Jacob Meuser <jakemsr@sdf.lonestar.org>
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

#include <unistd.h>
#include <stdio.h>
#include <sndio.h>

#include "audioIO.h"

static struct sio_hdl *hdl;
static struct sio_par par;

int
audioConstruct()
{
	hdl = NULL;
	return true;
}

void
audioDestruct()
{
}

int
audioOpen()
{
	hdl = sio_open(NULL, SIO_PLAY, 0);
	if (hdl == NULL) {
		fprintf(stderr, "unable to open audio device\n");
		return 0;
	}

	return true;
}

inline void
audioFlush()
{
}

void
audioClose()
{
	if (hdl != NULL)
		sio_close(hdl);
}

void
audioInit(int sampleSize, int frequency, int stereo, int sign, int big)
{
	sio_initpar(&par);

	par.bits = sampleSize;
	par.sig = sign ? 1 : 0;
	par.le = big ? 0 : 1;
	par.rate = frequency;
	par.pchan = stereo ? 2 : 1;

	if (!sio_setpar(hdl, &par) || !sio_getpar(hdl, &par))
		fprintf(stderr, "error setting sndio parameters\n");
  
	if (par.bits != sampleSize ||
	    par.sig != sign ? 1 : 0 ||
	    par.le != big ? 0 : 1 ||
	    par.rate != frequency ||
	    par.pchan != stereo ? 2 : 1)
		fprintf(stderr, "could not set requested audio parameters");

	if (!sio_start(hdl))
		fprintf(stderr, "could not start audio");
}

int
getAudioBufferSize()
{
	return (par.appbufsz * par.bps * par.pchan);
}


void
mixerSetVolume(int leftVolume, int rightVolume)
{
	/* values from 0..100 */
}

int
mixerOpen()
{
	return false;
}

void
mixerClose()
{
}

int
audioWrite(char *buffer, int count)
{
	return(sio_write(hdl, buffer, count));
}
