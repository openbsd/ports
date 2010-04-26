/*
 * Copyright (c) 2010	Eric Faurot	<eric@openbsd.org>
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
#include <stdio.h>
#include <config.h>

#include "prim_type.h"
#include "ad.h"

#define bPS	16
#define BPS	2

ad_rec_t *
ad_open_dev(const char *dev, int32 rate)
{
	struct sio_hdl	*hdl;
	struct sio_par	 param;

	hdl = sio_open(dev, SIO_REC, 1);
	if (hdl == NULL) {
		fprintf(stderr, "ad_open_dev: sio_open(%s) failed\n", dev);
		return NULL;
	}

	sio_initpar(&param);
	param.bits = bPS;
	param.bps = BPS;
	param.sig = 1;
	param.le = 1;
	param.rchan = 1;
	param.rate = rate;
	if (!sio_setpar(hdl, &param)) {
		fprintf(stderr, "ad_open_dev: sio_setpar() failed\n");
		sio_close(hdl);
		return NULL;
	}
	if (!sio_getpar(hdl, &param)) {
		fprintf(stderr, "ad_open_dev: sio_getpar() failed\n");
		sio_close(hdl);
		return NULL;
	}
	if (param.bits != bPS ||
	    param.bps != BPS ||
	    param.sig != 1 ||
	    param.le != 1 ||
	    param.rchan != 1 ||
	    param.rate != rate) {
		fprintf(stderr, "ad_open_dev: can't set specified params\n");
		sio_close(hdl);
		return NULL;
	}

	return (ad_rec_t*)hdl;
}

ad_rec_t *
ad_open_sps(int32 rate)
{
	return ad_open_dev(NULL, rate);
}

ad_rec_t *
ad_open(void)
{
	return ad_open_sps(DEFAULT_SAMPLES_PER_SEC);
}

int32
ad_start_rec(ad_rec_t *r)
{
	struct sio_hdl	*hdl = (struct sio_hdl*)r;

	if (!sio_start(hdl))
		return AD_ERR_GEN;

	return (0);
}

int32
ad_stop_rec(ad_rec_t *r)
{
	struct sio_hdl	*hdl = (struct sio_hdl*)r;

	if (!sio_stop(hdl))
		return AD_ERR_GEN;

	return (0);
}


int32
ad_read(ad_rec_t *r, int16 *buf, int32 max)
{
	size_t		 n, t;
	char*		 b = (char *)buf;
	struct sio_hdl	*hdl = (struct sio_hdl*)r;

	n = sio_read(hdl, b, max * BPS);
	while (n % BPS) {
		t = sio_read(hdl, b + n, BPS - (n % BPS));
		if (t == 0)
			return AD_ERR_GEN;
		n += t;
	}
	return (n / BPS);
}

int32
ad_close(ad_rec_t *r)
{
	struct sio_hdl  *hdl = (struct sio_hdl*)r;

	sio_close(hdl);
	return (0);
}
