/*
 *
 *  ao_sndio.c
 *
 *      Copyright (C) Alexandre Ratchov - 2008
 *
 *  libao is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2, or (at your option)
 *  any later version.
 *
 *  libao is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with GNU Make; see the file COPYING.  If not, write to
 *  the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
 *
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
