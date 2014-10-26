/*
 * audio_out_sndio.c
 * Copyright (C) 2000-2003 Michel Lespinasse <walken@zoy.org>
 * Copyright (C) 1999-2000 Aaron Holtzman <aholtzma@ess.engr.uvic.ca>
 *
 * This file is part of a52dec, a free ATSC A-52 stream decoder.
 * See http://liba52.sourceforge.net/ for updates.
 *
 * a52dec is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * a52dec is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "config.h"

#ifdef LIBAO_SNDIO

#include <sndio.h>
#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>

#include "a52.h"
#include "audio_out.h"
#include "audio_out_internal.h"

typedef struct sndio_instance_s {
    ao_instance_t ao;
    struct sio_hdl *hdl;
    int sample_rate;
    int set_params;
    int flags;
} sndio_instance_t;

static int sndio_setup (ao_instance_t * _instance, int sample_rate, int * flags,
		      level_t * level, sample_t * bias)
{
    sndio_instance_t * instance = (sndio_instance_t *) _instance;

    if ((instance->set_params == 0) && (instance->sample_rate != sample_rate))
	return 1;
    instance->sample_rate = sample_rate;

    *flags = instance->flags;
    *level = CONVERT_LEVEL;
    *bias = CONVERT_BIAS;

    return 0;
}

static int sndio_play (ao_instance_t * _instance, int flags, sample_t * _samples)
{
    sndio_instance_t * instance = (sndio_instance_t *) _instance;
    int16_t int16_samples[256*6];
    int chans = -1;

#ifdef LIBA52_DOUBLE
    convert_t samples[256 * 6];
    int i;

    for (i = 0; i < 256 * 6; i++)
	samples[i] = _samples[i];
#else
    convert_t * samples = _samples;
#endif

    chans = channels_multi (flags);
    flags &= A52_CHANNEL_MASK | A52_LFE;

    if (instance->set_params) {
	struct sio_par par;

	sio_initpar(&par);
	par.bits = 16;
	par.sig = 1;
	par.le = SIO_LE_NATIVE;
	par.pchan = chans;
	par.rate = instance->sample_rate;
	if (!sio_setpar(instance->hdl, &par) || !sio_setpar(instance->hdl, &par)) {
	    fprintf (stderr, "Can not set audio parameters\n");
	    return 1;
	}
	if (par.bits != 16 || par.sig != 1 || par.le != SIO_LE_NATIVE ||
	    par.pchan != chans || par.rate != instance->sample_rate) {
	    fprintf (stderr, "Unsupported audio parameters\n");
	    return 1;
	}
	instance->flags = flags;
	instance->set_params = 0;
	sio_start(instance->hdl);
    } else if ((flags == A52_DOLBY) && (instance->flags == A52_STEREO)) {
	fprintf (stderr, "Switching from stereo to dolby surround\n");
	instance->flags = A52_DOLBY;
    } else if ((flags == A52_STEREO) && (instance->flags == A52_DOLBY)) {
	fprintf (stderr, "Switching from dolby surround to stereo\n");
	instance->flags = A52_STEREO;
    } else if (flags != instance->flags)
	return 1;

    convert2s16_multi (samples, int16_samples, flags);
    sio_write (instance->hdl, int16_samples, 256 * sizeof (int16_t) * chans);

    return 0;
}

static void sndio_close (ao_instance_t * _instance)
{
    sndio_instance_t * instance = (sndio_instance_t *) _instance;

    sio_close (instance->hdl);
}

static ao_instance_t * sndio_open (int flags)
{
    sndio_instance_t * instance;
    int format;

    instance = (sndio_instance_t *) malloc (sizeof (sndio_instance_t));
    if (instance == NULL)
	return NULL;

    instance->ao.setup = sndio_setup;
    instance->ao.play = sndio_play;
    instance->ao.close = sndio_close;

    instance->sample_rate = 0;
    instance->set_params = 1;
    instance->flags = flags;

    instance->hdl = sio_open (SIO_DEVANY, SIO_PLAY, 0);
    if (instance->hdl == NULL) {
	fprintf (stderr, "Can not open " SIO_DEVANY " device\n");
	free (instance);
	return NULL;
    }

    return (ao_instance_t *) instance;
}

ao_instance_t * ao_sndio_open (void)
{
    return sndio_open (A52_STEREO);
}

ao_instance_t * ao_sndiodolby_open (void)
{
    return sndio_open (A52_DOLBY);
}

ao_instance_t * ao_sndio4_open (void)
{
    return sndio_open (A52_2F2R);
}

ao_instance_t * ao_sndio6_open (void)
{
    return sndio_open (A52_3F2R | A52_LFE);
}

#endif
