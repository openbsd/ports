/*****************************************************************************
 * sndio.c : sndio plugin for VLC
 *****************************************************************************
 * Copyright (C) 2012 Rémi Denis-Courmont
 * Copyright (C) 2012 Alexandre Ratchov
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin Street, Fifth Floor, Boston MA 02110-1301, USA.
 *****************************************************************************/

#ifdef HAVE_CONFIG_H
# include "config.h"
#endif

#include <assert.h>

#include <vlc_common.h>
#include <vlc_plugin.h>
#include <vlc_aout.h>
#include <vlc_aout_intf.h>

#include <sndio.h>

static int Open (vlc_object_t *);
static void Close (vlc_object_t *);

vlc_module_begin ()
    set_shortname ("sndio")
    set_description (N_("sndio audio output"))
    set_category (CAT_AUDIO)
    set_subcategory (SUBCAT_AUDIO_AOUT)
    set_capability ("audio output", 120)
    set_callbacks (Open, Close )
vlc_module_end ()

static void Play  (audio_output_t *, block_t *);
static void Pause (audio_output_t *, bool, mtime_t);
static void Flush (audio_output_t *, bool);
static int VolumeSet(audio_output_t *, float, bool);

struct aout_sys_t
{
    struct sio_hdl *hdl;
    int delay, bpf;
};

static void onmove (void *addr, int delta)
{
    audio_output_t *aout = (audio_output_t *)addr;
    struct aout_sys_t *sys = (struct aout_sys_t *)aout->sys;
    
    sys->delay -= delta;
}

/** Initializes an sndio playback stream */
static int Open (vlc_object_t *obj)
{
    char fourcc[4];
    unsigned int chans;
    audio_output_t *aout = (audio_output_t *)obj;
    struct aout_sys_t *sys;    
    struct sio_hdl *hdl;
    struct sio_par par;

    hdl = sio_open (NULL, SIO_PLAY, 0);
    if (hdl == NULL)
    {
        msg_Err (obj, "cannot create audio playback stream");
        return VLC_EGENERIC;
    }

    sio_initpar (&par);
    vlc_fourcc_to_char (aout->format.i_format, fourcc);
    do {
	if (fourcc[0] == 's')
	    par.sig = 1;
	else if (fourcc[0] == 'u')
	    par.sig = 0;
	else
	    break;
	if (fourcc[1] == '8' && fourcc[2] == ' ' && fourcc[3] == ' ') {
	    par.bits = 8;
	    break;
	} else if (fourcc[1] == '1' && fourcc[2] == '6') {
	    par.bits = 16;
	} else if (fourcc[1] == '2' && fourcc[2] == '4') {
	    par.bits = 24;
	    par.bps = 3;
	} else if (fourcc[1] == '3' && fourcc[2] == '2') {
	    par.bits = 32;
	}
	if (fourcc[3] == 'l')
	    par.le = 1;
	else if (fourcc[3] == 'b')
	    par.le = 0;
	else
	    break;
    } while (0);
    par.pchan = aout_FormatNbChannels (&aout->format);
    par.rate = aout->format.i_rate;
    par.appbufsz = par.rate / 2;
    if (!sio_setpar (hdl, &par) || !sio_getpar (hdl, &par))
    {
        msg_Err (obj, "cannot negotiate audio playback parameters");
        goto error;
    }

    fourcc[0] = par.sig ? 's' : 'u';
    if (par.bps == 1) {
	fourcc[1] = '8';
	fourcc[2] = ' ';
	fourcc[3] = ' ';
    } else {
	fourcc[1] = '0' + (par.bps << 3) / 10;
	fourcc[2] = '0' + (par.bps << 3) % 10;
	fourcc[3] = par.le ? 'l' : 'b';
	if (par.bits < (par.bps << 3) && !par.msb) {
	    msg_Err (obj, "unsupported LSB alignement (%u bits in %u bytes)",
		     par.bits, par.bps);
	    goto error;
	}
    }

    /* Channel map */
    switch (par.pchan)
    {
        case 1:
            chans = AOUT_CHAN_CENTER;
            break;
        case 2:
            chans = AOUT_CHANS_STEREO;
            break;
        case 4:
            chans = AOUT_CHANS_4_0;
            break;
        case 6:
            chans = AOUT_CHANS_5_1;
            break;
        case 8:
            chans = AOUT_CHANS_7_1;
            break;
        default:
            msg_Err (aout, "unknown %u channels map", par.pchan);
            goto error;
    }

    sys = malloc (sizeof(struct aout_sys_t));
    if (sys == NULL) {
	msg_Err (aout, "failed to allocate sndio structure");
	goto error;
    }
    sys->hdl = hdl;
    sys->bpf = par.bps * par.pchan;
    sys->delay = 0;
    aout->sys = sys;
    aout->format.i_format =
	VLC_FOURCC(fourcc[0], fourcc[1], fourcc[2], fourcc[3]);
    msg_Warn(aout, "pchan = %u, rate = %u, bufsz = %u, round = %u\n",
	par.pchan, par.rate, par.bufsz, par.round);
    msg_Warn(aout, "orig_chans = 0x%x, phys_chans = 0x%x, chans = 0x%x\n",
	aout->format.i_original_channels,
	aout->format.i_physical_channels,
	chans);
    aout->format.i_original_channels = chans;
    aout->format.i_physical_channels = chans;
    aout->format.i_rate = par.rate;
    aout->pf_play = Play;
    aout->pf_pause = Pause;
    aout->pf_flush = Flush;
    aout_VolumeHardInit (aout, VolumeSet);
    VolumeSet(aout,
	      var_InheritInteger (aout, "volume") / (float)AOUT_VOLUME_DEFAULT,
	      var_InheritBool (aout, "mute"));
    sio_onmove (hdl, onmove, aout);
    sio_start (hdl);
    return VLC_SUCCESS;

error:
    sio_close (hdl);
    return VLC_EGENERIC;
}

static void Close (vlc_object_t *obj)
{
    audio_output_t *aout = (audio_output_t *)obj;
    struct aout_sys_t *sys = (struct aout_sys_t *)aout->sys;

    sio_close (sys->hdl);
    free (sys);
}

static void Play (audio_output_t *aout, block_t *block)
{
    struct aout_sys_t *sys = (struct aout_sys_t *)aout->sys;

    aout_TimeReport (aout, block->i_pts -
		     sys->delay * CLOCK_FREQ / aout->format.i_rate);
    sio_write (sys->hdl, block->p_buffer, block->i_nb_samples * sys->bpf);
    sys->delay += block->i_nb_samples;
    block_Release (block);
}

static void Pause (audio_output_t *aout, bool pause, mtime_t date)
{
    struct aout_sys_t *sys = (struct aout_sys_t *)aout->sys;
    static char zeros[100];
    unsigned int todo, n;

    if (pause) {
        sio_stop (sys->hdl);
        sio_start (sys->hdl);
    } else {
	todo = sys->delay * sys->bpf;
	while (todo > 0) {
	    n = todo;
	    if (n >= sizeof(zeros))
		n = sizeof(zeros);
	    sio_write(sys->hdl, zeros, n);
	    todo -= n;
	}
    }
    (void)date;
}

static void Flush (audio_output_t *aout, bool wait)
{
    struct aout_sys_t *sys = (struct aout_sys_t *)aout->sys;
    
    sys->delay = 0;
    (void)wait;
}

static int VolumeSet(audio_output_t *aout, float vol, bool mute)
{
    struct aout_sys_t *sys = (struct aout_sys_t *)aout->sys;
    int ctl;

    if (mute)
	ctl = 0;
    else {
	if (vol < 0)
	    vol = 0;
	if (vol > 1)
	    vol = 1;
	ctl = vol * SIO_MAXVOL;
    }
    sio_setvol (sys->hdl, ctl);
    return VLC_SUCCESS;
}
