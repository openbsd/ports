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

#include <sys/types.h>
#include <poll.h>
#include <errno.h>
#include <sndio.h>

#include "config.h"
#include "mp_msg.h"
#include "mixer.h"
#include "help_mp.h"

#include "libaf/af_format.h"

#include "audio_out.h"
#include "audio_out_internal.h"

static ao_info_t info = {
	"sndio audio output",
	"sndio",
	"Alexandre Ratchov <alex@caoua.org>",
	""
};

LIBAO_EXTERN(sndio)

static struct sio_hdl *hdl = NULL;
struct pollfd *pfds;
static struct sio_par par;
static int delay, vol, havevol;
#define SILENCE_NMAX 0x1000
static char silence[SILENCE_NMAX];

/*
 * misc parameters (volume, etc...)
 */
static int control(int cmd, void *arg)
{
	ao_control_vol_t *ctl = arg;

	switch (cmd) {
	case AOCONTROL_GET_VOLUME:
		if (!havevol)
			return CONTROL_FALSE;
		ctl->left = ctl->right = vol * 100 / SIO_MAXVOL;
		break;
	case AOCONTROL_SET_VOLUME:
		if (!havevol)
			return CONTROL_FALSE;
		sio_setvol(hdl, ctl->left * SIO_MAXVOL / 100);
		break;
	default:
		return CONTROL_UNKNOWN;
	}
	return CONTROL_OK;
}

/*
 * call-back invoked to notify of the hardware position
 */
static void movecb(void *addr, int delta)
{
	delay -= delta * (int)(par.bps * par.pchan);
}

/*
 * call-back invoked to notify about volume changes
 */
static void volcb(void *addr, unsigned newvol)
{
	vol = newvol;
}

/*
 * open device and setup parameters
 * return: 1 = success, 0 = failure
 */
static int init(int rate, int channels, int format, int flags)
{
	struct af_to_par {
		int format, bits, sig, le;
	} af_to_par[] = {
		{AF_FORMAT_U8,	    8, 0, 0},
		{AF_FORMAT_S8,      8, 1, 0},
		{AF_FORMAT_U16_LE, 16, 0, 1},
		{AF_FORMAT_U16_BE, 16, 0, 0},
		{AF_FORMAT_S16_LE, 16, 1, 1},
		{AF_FORMAT_S16_BE, 16, 1, 0},
		{AF_FORMAT_U24_LE, 16, 0, 1},
		{AF_FORMAT_U24_BE, 24, 0, 0},
		{AF_FORMAT_S24_LE, 24, 1, 1},
		{AF_FORMAT_S24_BE, 24, 1, 0},
		{AF_FORMAT_U32_LE, 32, 0, 1},
		{AF_FORMAT_U32_BE, 32, 0, 0},
		{AF_FORMAT_S32_LE, 32, 1, 1},
		{AF_FORMAT_S32_BE, 32, 1, 0}
	}, *p;
	int i, bpf, ac3 = 0;
	
	hdl = sio_open(NULL, SIO_PLAY, 0);
	if (hdl == NULL) {
		mp_msg(MSGT_AO, MSGL_ERR, "ao2: can't open sndio\n");
		return 0;
	}
	sio_initpar(&par);
	for (i = 0, p = af_to_par;; i++, p++) {
		if (i == sizeof(af_to_par) / sizeof(struct af_to_par)) {
			if (format == AF_FORMAT_AC3_BE ||
			    format == AF_FORMAT_AC3_LE)
				ac3 = 1;
			mp_msg(MSGT_AO, MSGL_V, "ao2: unsupported format\n");
			par.bits = 16;
			par.sig = 1;
			par.le = SIO_LE_NATIVE;
			break;
		}
		if (p->format == format) {
			par.bits = p->bits;
			par.sig = p->sig;
			if (p->bits > 8)
				par.le = p->le;
			if (p->bits != SIO_BPS(p->bits))
				par.bps = p->bits / 8;
			break;
		}
	}
	par.rate = rate;
	par.pchan = channels;
	par.appbufsz = par.rate * 250 / 1000;	/* 250ms buffer */
	par.round = par.rate * 10 / 1000;	/*  10ms block size */
	if (!sio_setpar(hdl, &par)) {
		mp_msg(MSGT_AO, MSGL_ERR, "ao2: couldn't set params\n");
		goto bad_close;
	}
	if (!sio_getpar(hdl, &par)) {
		mp_msg(MSGT_AO, MSGL_ERR, "ao2: couldn't get params\n");
		goto bad_close;
	}
	if (par.bits == 8 && par.bps == 1) {
		format = par.sig ? AF_FORMAT_S8 : AF_FORMAT_U8;	
	} else if (par.bits == 16 && par.bps == 2) {
		format = par.sig ? 
		    (par.le ? AF_FORMAT_S16_LE : AF_FORMAT_S16_BE) :
		    (par.le ? AF_FORMAT_U16_LE : AF_FORMAT_U16_BE);
	} else if ((par.bits == 24 || par.msb) && par.bps == 3) {
		format = par.sig ? 
		    (par.le ? AF_FORMAT_S24_LE : AF_FORMAT_S24_BE) :
		    (par.le ? AF_FORMAT_U24_LE : AF_FORMAT_U24_BE);
	} else if ((par.bits == 32 || par.msb) && par.bps == 4) {
		format = par.sig ? 
		    (par.le ? AF_FORMAT_S32_LE : AF_FORMAT_S32_BE) :
		    (par.le ? AF_FORMAT_U32_LE : AF_FORMAT_U32_BE);
	} else {
		mp_msg(MSGT_AO, MSGL_ERR, "ao2: couldn't set format\n");
		goto bad_close;
	}
	pfds = malloc(sizeof(struct pollfd) * sio_nfds(hdl));
	if (pfds == NULL) {
		mp_msg(MSGT_AO, MSGL_ERR, "ao2: couldn't allocate poll fds\n");
		goto bad_close;
	}
	bpf = par.bps * par.pchan;
	ao_data.channels = par.pchan;
	ao_data.format = ac3 ? AF_FORMAT_AC3_NE : format;
	ao_data.bps = bpf * par.rate;
	ao_data.buffersize = par.bufsz * bpf;
	ao_data.outburst = par.round * bpf;
	ao_data.samplerate = rate;
	havevol = sio_onvol(hdl, volcb, NULL);
	sio_onmove(hdl, movecb, NULL);
	delay = 0;
	if (!sio_start(hdl)) {
		mp_msg(MSGT_AO, MSGL_ERR, "ao2: init: couldn't start\n");
		goto bad_free;
	}
	return 1;
bad_free:
	free(pfds);
bad_close:
	sio_close(hdl);
	hdl = 0;
	return 0;
}

/*
 * close device
 */
static void uninit(int immed)
{
	if (hdl)
		sio_close(hdl);
}

/*
 * stop playing and empty buffers (for seeking/pause)
 */
static void reset(void)
{
	if (!sio_stop(hdl)) {
		mp_msg(MSGT_AO, MSGL_ERR, "ao2: reset: couldn't stop\n");
	}
	delay = 0;
	if (!sio_start(hdl)) {
		mp_msg(MSGT_AO, MSGL_ERR, "ao2: reset: couldn't start\n");
	}
}

/*
 * how many bytes can be played without blocking
 */
static int get_space(void)
{
	int bufused, revents, n;

	/*
	 * call poll() and sio_revents(), so the
	 * delay counter is updated
	 */
	n = sio_pollfd(hdl, pfds, POLLOUT);
	while (poll(pfds, n, 0) < 0 && errno == EINTR)
		; /* nothing */
	revents = sio_revents(hdl, pfds);
	return par.bufsz * par.pchan * par.bps - delay;
}

/*
 * play given number of bytes until sio_write() blocks
 */
static int play(void *data, int len, int flags)
{
	int n;

	n = sio_write(hdl, data, len);
	delay += n;
	if (flags & AOPLAY_FINAL_CHUNK)
		reset();
	return n;
}

/*
 * return: delay in seconds between first and last sample in buffer
 */
static float get_delay(void)
{
	return (float)delay / (par.bps * par.pchan * par.rate);
}

/*
 * stop playing, keep buffers (for pause)
 */
static void audio_pause(void)
{
	reset();
}

/*
 * resume playing, after audio_pause()
 */
static void audio_resume(void)
{
	int n, count, todo;

	/*
	 * we want to start with buffers full, because mplayer uses
	 * get_space() pointer as clock, which would cause video to
	 * accelerate while buffers are filled.
	 */
	todo = par.bufsz * par.pchan * par.bps;
	while (todo > 0) {
		count = todo;
		if (count > SILENCE_NMAX)
			count = SILENCE_NMAX;
		n = sio_write(hdl, silence, count);
		if (n == 0)
			break;
		todo -= n;
		delay += n;
	}
}
