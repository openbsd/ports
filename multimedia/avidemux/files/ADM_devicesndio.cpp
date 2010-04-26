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

#include "config.h"

#if defined(USE_SNDIO)

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include "default.h"
#include "ADM_audiodevice.h"
#include "ADM_assert.h"
#include "ADM_audiodevice/ADM_devicesndio.h"
#include "ADM_toolkit/toolkit.hxx"
#include "prefs.h"

uint8_t
sndioAudioDevice::setVolume(int volume) 
{
}

uint8_t
sndioAudioDevice::stop(void)
{
	if (hdl != NULL) {
		sio_close(hdl);
		hdl = NULL;
	}
	return 1;
}

uint8_t
sndioAudioDevice::init(uint8_t channels, uint32_t fq) 
{
	struct sio_par par;

	_channels = channels;
 
	printf("\n sndio : %lu Hz, %lu channels", fq, channels);

	hdl = sio_open(NULL, SIO_PLAY, 0);
	if (hdl == NULL) {
		printf("\ncould not open sndio audio device\n");
		return 0;
	}

	sio_initpar(&par);
	par.rate = fq;
	par.pchan = channels;
	par.bits = 16;
	par.sig = 1;
	par.le = SIO_LE_NATIVE;
	par.appbufsz = fq / 4;

	if (!sio_setpar(hdl, &par) || !sio_getpar(hdl, &par)) {
		printf("\nerror configuring sndio device\n");
		return 0;
	}

	if (par.rate != fq || par.pchan != channels || par.bits != 16 ||
	    par.sig != 1 || par.le != SIO_LE_NATIVE) {
		printf("\ncould not set appropriate sndio parameters\n");
		return 0;
	}

	if (!sio_start(hdl)) {
		printf("\ncould not start sndio\n");
		return 0;
	}

	return 1;
}

uint8_t
sndioAudioDevice::play(uint32_t len, float *data)
{
	uint32_t w;

	if (!hdl)
		return 0;

	dither16(data, len, _channels);

	w = sio_write(hdl, data, len * 2);
	if (w != len * 2)
		printf("\nwarning: sio_write() returned short: %d of %d\n",
		    w, len * 2); 

	return 1;
}
#else
void dummy_sndio_func(void);
void dummy_sndio_func(void) {}
#endif
