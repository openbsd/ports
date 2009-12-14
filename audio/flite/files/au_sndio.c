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

#include <sndio.h>

#include "cst_string.h"
#include "cst_audio.h"

cst_audiodev *
audio_open_sndio(int sps, int channels, cst_audiofmt fmt)
{
	struct sio_par par;
	struct sio_hdl *hdl;
	cst_audiodev *ad;

	hdl = sio_open(NULL, SIO_PLAY, 0);
	if (hdl == NULL) {
		cst_errmsg("sndio_audio: failed to open audio device\n");
		cst_error();
	}

	sio_initpar(&par);
	switch (fmt) {
	case CST_AUDIO_LINEAR16:
		par.bits = 16;
		par.sig = 1;
		break;
	case CST_AUDIO_LINEAR8:
		par.bits = 8;
		par.sig = 0;
		break;
	default:
		cst_errmsg("sndio_audio: invalid format\n");
		cst_error();
	}

	par.pchan = 1;
	par.rate = sps;

	if (!sio_setpar(hdl, &par)) {
		cst_errmsg("sndio_audio: failed to set audio params\n");
		cst_error();
	}
	if (!sio_getpar(hdl, &par)) {
		cst_errmsg("sndio_audio: failed to get audio params\n");
		cst_error();
	}

	ad = cst_alloc(cst_audiodev, 1);

	ad->sps = sps;
	ad->real_sps = par.rate;

	ad->channels = channels;
	ad->real_channels = par.pchan;

	ad->fmt = fmt;
	if (par.sig == 1 && par.bits == 16)
		ad->real_fmt = CST_AUDIO_LINEAR16;
	else if (par.sig == 0 && par.bits == 8)
		ad->real_fmt = CST_AUDIO_LINEAR8;
	else {
		cst_errmsg("sndio_audio: returned audio format unsupported\n");
		cst_free(ad);
		cst_error();
	}

	if (!sio_start(hdl)) {
		cst_errmsg("sndio_audio: start failed\n");
		cst_free(ad);
		cst_error();
	}

	ad->platform_data = hdl;

	return ad;
}

int
audio_close_sndio(cst_audiodev *ad)
{
	if (ad == NULL)
		return 0;

	sio_close(ad->platform_data);

	cst_free(ad);

	return 0;
}

int
audio_write_sndio(cst_audiodev *ad, void *samples, int num_bytes)
{
	return sio_write(ad->platform_data, samples, num_bytes);
}

int
audio_flush_sndio(cst_audiodev *ad)
{
	return 0;
}

int
audio_drain_sndio(cst_audiodev *ad)
{
	return 0;
}
