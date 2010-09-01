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

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <poll.h>
#include <errno.h>

#include <sndio.h>

#include "client.h"
#include "snd_loc.h"

static struct sio_hdl *hdl;
static int snd_inited;

unsigned char *dma_buffer;
size_t dma_buffer_size, dma_ptr;

struct sndinfo *si;

qboolean
SNDDMA_Init(struct sndinfo *s)
{
	struct sio_par par;
	int i;

	if (snd_inited)
		return true;

	si = s;

	/* si->device->string */
	hdl = sio_open(NULL, SIO_PLAY, 1);
	if (hdl == NULL) {
		si->Com_Printf("Could not open sndio device\n");
		return false;
	}

	si->dma->samplebits = (int)si->bits->value;
	if (si->dma->samplebits != 8 && si->dma->samplebits != 16) {
		si->Com_Printf("using 16-bit samples\n");
		si->dma->samplebits = 16;
	}
	si->dma->channels = (int)si->channels->value;
	if (si->dma->channels != 1 && si->dma->channels != 2) {
		si->Com_Printf("using 2 channels\n");
		si->dma->channels = 2;
	}
	si->dma->speed = (int)si->speed->value;
	if (!si->dma->speed)
		si->dma->speed = 44100;

	sio_initpar(&par);
	par.pchan = si->dma->channels;
	par.rate = si->dma->speed;
	par.bits = si->dma->samplebits;
	par.sig = par.bits == 16 ? 1 : 0;
	par.le = SIO_LE_NATIVE;
	par.appbufsz = par.rate / 10;	/* 1/10 second latency */

	if (!sio_setpar(hdl, &par) || !sio_getpar(hdl, &par)) {
		si->Com_Printf("Error setting audio parameters\n");
		sio_close(hdl);
		return false;
	}
	if ((par.pchan != 1 && par.pchan != 2) ||
	    !((par.bits == 16 && par.sig == 1) ||
	      (par.bits == 8 && par.sig == 0))) {
		si->Com_Printf("Could not set appropriate audio parameters\n");
		sio_close(hdl);
		return false;
	}
	si->dma->speed = par.rate;
	si->dma->channels = par.pchan;
	si->dma->samplebits = par.bits;

	/*
	 * find the smallest power of two larger than the buffer size
	 * and use it as the internal buffer's size
	 */
	for (i = 1; i < par.appbufsz; i <<= 2)
		; /* nothing */
	si->dma->samples = i * par.pchan;

	dma_buffer_size = si->dma->samples * si->dma->samplebits / 8;
	dma_buffer = calloc(1, dma_buffer_size);
	if (dma_buffer == NULL) {
		si->Com_Printf("Could not allocate audio ring buffer\n");
		return false;
	}
	dma_ptr = 0;
	si->dma->buffer = dma_buffer;
	if (!sio_start(hdl)) {
		si->Com_Printf("Could not start audio\n");
		sio_close(hdl);
		return false;
	}
	si->dma->submission_chunk = 1;
	si->dma->samplepos = 0;
	snd_inited = true;
	return true;
}

void
SNDDMA_Shutdown(void)
{
	if (snd_inited == true) {
		sio_close(hdl);
		snd_inited = false;
	}
	free(dma_buffer);
}

int
SNDDMA_GetDMAPos(void)
{
	if (!snd_inited)
		return (0);
	si->dma->samplepos = dma_ptr / (si->dma->samplebits / 8);
	return si->dma->samplepos;
}

void
SNDDMA_Submit(void)
{
	struct pollfd pfd;
	size_t count, todo, avail;
	int n;

	n = sio_pollfd(hdl, &pfd, POLLOUT);
	while (poll(&pfd, n, 0) < 0 && errno == EINTR)
		;
	if (!(sio_revents(hdl, &pfd) & POLLOUT))
		return;
	avail = dma_buffer_size;
	while (avail > 0) {
		todo = dma_buffer_size - dma_ptr;
		if (todo > avail)
			todo = avail;
		count = sio_write(hdl, dma_buffer + dma_ptr, todo);
		if (count == 0)
			break;
		dma_ptr += count;
		if (dma_ptr >= dma_buffer_size)
			dma_ptr -= dma_buffer_size;
		avail -= count;
	}
}

void
SNDDMA_BeginPainting(void)
{
}
