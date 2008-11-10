/*
 * Copyright (c) 2008 Alexandre Ratchov <alex@caoua.org>
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
#include <ao/ao.h>
#include <ao/plugin.h>

ao_info ao_sndio_info = {
	AO_TYPE_LIVE,
	"sndio audio output",
	"sndio",
	"Alexandre Ratchov <alex@caoua.org>",
	"Outputs to the sndio library",
	AO_FMT_NATIVE,
	30,
	NULL,	/* no options */
	0	/* zero options */
};

int ao_plugin_test()
{
	struct sio_hdl *hdl;

	hdl = sio_open(NULL, SIO_PLAY, 0);
	if (hdl == NULL)
		return 0;
	sio_close(hdl);
	return 1;
}

ao_info *ao_plugin_driver_info(void)
{
	return &ao_sndio_info;
}

int ao_plugin_device_init(ao_device *device)
{
	struct sio_hdl *hdl;

	hdl = sio_open(NULL, SIO_PLAY, 0);
	if (hdl == NULL)
		return 0;
	device->internal = hdl;
	return 1;
}

int ao_plugin_set_option(ao_device *device, const char *key, const char *value)
{
	return 1;
}

int ao_plugin_open(ao_device *device, ao_sample_format *format)
{
	struct sio_hdl *hdl = (struct sio_hdl *)device->internal;
	struct sio_par par;

	sio_initpar(&par);
	par.sig = 1;
	par.le = SIO_LE_NATIVE;
	par.bits = format->bits;
	par.rate = format->rate;
	par.pchan = format->channels;
	if (!sio_setpar(hdl, &par))
		return 0;
	device->driver_byte_format = AO_FMT_NATIVE;
	if (!sio_start(hdl))
		return 0;
	return 1;
}

int ao_plugin_play(ao_device *device, const char *output_samples, uint_32 num_bytes)
{
	struct sio_hdl *hdl = (struct sio_hdl *)device->internal;

	if (!sio_write(hdl, output_samples, num_bytes))
		return 0;
	return 1;
}

int ao_plugin_close(ao_device *device)
{
	struct sio_hdl *hdl = (struct sio_hdl *)device->internal;

	if (!sio_stop(hdl))
		return 0;
	return 1;
}

void ao_plugin_device_clear(ao_device *device)
{
	struct sio_hdl *hdl = (struct sio_hdl *)device->internal;

	sio_close(hdl);	
}
