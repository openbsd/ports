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

#include <config.h>

#ifndef _REENTRANT
#define _REENTRANT
#endif
#ifndef _THREAD_SAFE
#define _THREAD_SAFE
#endif

#include <sys/stat.h>
#include <sys/types.h>

#include <stdlib.h>
#include <string.h>
#include <poll.h>
#include <unistd.h>
#include <pthread.h>
#include <stdio.h>
#include <fcntl.h>
#include <errno.h>
#include <math.h>
#include <float.h>
#include <stdarg.h>
#include <getopt.h>

#include <sndio.h>

#include <jack/types.h>
#include <jack/internal.h>
#include <jack/engine.h>
#include <jack/thread.h>
#include <sysdeps/time.h>

#include "sndio_driver.h"


#define SNDIO_DRIVER_N_PARAMS	10
const static jack_driver_param_desc_t sndio_params[SNDIO_DRIVER_N_PARAMS] = {
	{ "rate",
	  'r',
	  JackDriverParamUInt,
	  { .ui = SNDIO_DRIVER_DEF_FS },
	  "sample rate",
	  "sample rate"
	},
	{ "period",
	  'p',
	  JackDriverParamUInt,
	  { .ui = SNDIO_DRIVER_DEF_BLKSIZE },
	  "period size",
	  "period size"
	},
	{ "nperiods",
	  'n',
	  JackDriverParamUInt,
	  { .ui = SNDIO_DRIVER_DEF_NPERIODS },
	  "number of periods in buffer",
	  "number of periods in buffer"
	},
	{ "wordlength",
	  'w',
	  JackDriverParamInt,
	  { .i = SNDIO_DRIVER_DEF_BITS },
	  "word length",
	  "word length"
	},
	{ "inchannels",
	  'i',
	  JackDriverParamUInt,
	  { .ui = SNDIO_DRIVER_DEF_INS },
	  "capture channels",
	  "capture channels"
	},
	{ "outchannels",
	  'o',
	  JackDriverParamUInt,
	  { .ui = SNDIO_DRIVER_DEF_OUTS },
	  "playback channels",
	  "playback channels"
	},
	{ "device",
	  'd',
	  JackDriverParamString,
	  { },
	  "device",
	  "device"
	},
	{ "ignorehwbuf",
	  'b',
	  JackDriverParamBool,
	  { },
	  "ignore hardware period size",
	  "ignore hardware period size"
	},
	{ "input latency",
	  'I',
	  JackDriverParamUInt,
	  { .ui = 0 },
	  "system capture latency",
	  "system capture latency"
	},
	{ "output latency",
	  'O',
	  JackDriverParamUInt,
	  { .ui = 0 },
	  "system playback latency",
	  "system playback latency"
	}
};


/* internal functions */

static void
sndio_movecb(void *arg, int delta)
{
	sndio_driver_t *driver = (sndio_driver_t *)arg;
	driver->realpos += delta;
}


static void
set_period_size (sndio_driver_t *driver, jack_nframes_t new_period_size)
{
	driver->period_size = new_period_size;

	driver->period_usecs = 
		((double) driver->period_size /
		(double) driver->sample_rate) * 1e6;
	driver->last_wait_ust = 0;
	driver->iodelay = 0.0F;
	driver->poll_timeout = (int)(driver->period_usecs / 666);
}


static void
sndio_driver_write_silence (sndio_driver_t *driver, jack_nframes_t nframes)
{
	size_t localsize, io_res, nbytes, offset;
	void *localbuf;

	localsize = nframes * driver->sample_bytes * driver->playback_channels;
	localbuf = malloc(localsize);
	if (localbuf == NULL)
	{
		jack_error("sndio_driver: malloc() failed: %s@%i",
			__FILE__, __LINE__);
		return;
	}

	offset = 0;
	bzero(localbuf, localsize);
	nbytes = localsize;
	while (nbytes > 0)
	{
		io_res = sio_write(driver->hdl, localbuf, nbytes);
		if (io_res == 0)
		{
			jack_error("sndio_driver: sio_write() failed: "
				"count=%d/%d: %s@%i", io_res, localsize,
				__FILE__, __LINE__);
		}
		offset += io_res;
		nbytes -= io_res;
	}
	driver->playpos += nframes;
	free(localbuf);
}


static void
sndio_driver_read_silence (sndio_driver_t *driver, jack_nframes_t nframes)
{
	size_t localsize, io_res, nbytes, offset;
	void *localbuf;

	localsize = nframes * driver->sample_bytes * driver->capture_channels;
	localbuf = malloc(localsize);
	if (localbuf == NULL)
	{
		jack_error("sndio_driver: malloc() failed: %s@%i",
			__FILE__, __LINE__);
		return;
	}

	offset = 0;
	bzero(localbuf, localsize);
	nbytes = localsize;
	while (nbytes > 0) {
		io_res = sio_read(driver->hdl, localbuf + offset, nbytes);
		if (io_res == 0) {
			jack_error("sndio_driver: sio_read() failed: "
				"count=%d/%d: %s@%i", io_res, nbytes,
				__FILE__, __LINE__);
			break;
		}
		offset +=- io_res;
		nbytes -= io_res;
	}
	driver->cappos += nframes;
	free(localbuf);
}


static int
sndio_driver_start (sndio_driver_t *driver)
{
	if (!sio_start(driver->hdl))
	{
		jack_error("sio_start failed: %s@%i",
			__FILE__, __LINE__);
	}

	/* prime playback buffers */
	if (driver->playback_channels > 0) {
		sndio_driver_write_silence(driver, driver->buffer_fill);
	}

	return 0;
}


static int
sndio_driver_set_parameters (sndio_driver_t *driver)
{
	struct sio_par par;
	unsigned int period_size = 0;
	unsigned int nperiods;
	int mode = 0;

	driver->sample_bytes = driver->bits / 8;

	if (driver->capture_channels > 0)
		mode |= SIO_REC;

	if (driver->playback_channels > 0)
		mode |= SIO_PLAY;

	driver->hdl = sio_open(driver->dev, mode, 0);
	if (driver->hdl == NULL)
	{
		jack_error("sndio_driver: failed to open device "
			"%s: %s@%i", (driver->dev == NULL) ?
			"default" : driver->dev, __FILE__, __LINE__);
		return -1;
	}

	sio_initpar(&par);
	par.sig = 1;
	par.bits = driver->bits;
	par.pchan = driver->playback_channels;
	par.rchan = driver->capture_channels;
	par.rate = driver->sample_rate;
	par.appbufsz = driver->period_size * driver->nperiods;
	par.round = driver->period_size;

	if (!sio_setpar(driver->hdl, &par))
	{
		jack_error("sndio_driver: failed to set parameters: %s@%i",
			__FILE__, __LINE__);
		return -1;
	}

	if (!sio_getpar(driver->hdl, &par))
	{
		jack_error("sndio_driver: sio_getpar failed: %s@%i",
			__FILE__, __LINE__);
		return -1;
	}

	if (par.sig != 1 || par.bits != driver->bits ||
		par.pchan != driver->playback_channels ||
		par.rchan != driver->capture_channels ||
		par.rate != driver->sample_rate)
	{
		jack_error("sndio_driver: setting parameters failed: %s@%i",
			__FILE__, __LINE__);
		return -1;
	}

	period_size = par.round;
	nperiods = par.bufsz / par.round;
	driver->buffer_fill = par.bufsz;

	if (period_size != 0 && !driver->ignorehwbuf &&
		(period_size != driver->period_size || 
		nperiods != driver->nperiods))
	{
		printf("sndio_driver: buffer update: "
			"period_size=%u, nperiods=%u\n", period_size, nperiods);

		driver->nperiods = nperiods;
		set_period_size(driver, period_size);

		if (driver->engine)
			driver->engine->set_buffer_size(driver->engine, 
				driver->period_size);
	}

	if (driver->capture_channels != 0)
	{
		driver->capbufsize = driver->period_size * 
			driver->capture_channels * driver->sample_bytes;
		driver->capbuf = malloc(driver->capbufsize);
		if (driver->capbuf == NULL)
		{
			jack_error( "sndio_driver: malloc() failed: %s@%i", 
				__FILE__, __LINE__);
			return -1;
		}
		bzero(driver->capbuf, driver->capbufsize);
	}
	else
	{
		driver->capbufsize = 0;
		driver->capbuf = NULL;
	}

	if (driver->playback_channels > 0)
	{
		driver->playbufsize = driver->period_size * 
			driver->playback_channels * driver->sample_bytes;
		driver->playbuf = malloc(driver->playbufsize);
		if (driver->playbuf == NULL)
		{
			jack_error("sndio_driver: malloc() failed: %s@%i", 
				__FILE__, __LINE__);
			return -1;
		}
		bzero(driver->playbuf, driver->playbufsize);
	}
	else
	{
		driver->playbufsize = 0;
		driver->playbuf = NULL;
	}

	driver->realpos = driver->playpos = driver->cappos = 0;
	sio_onmove(driver->hdl, sndio_movecb, driver);

	printf("sndio_driver: capbuf %zd B, playbuf %zd B\n",
		driver->capbufsize, driver->playbufsize);

	return 0;
}


static int
sndio_driver_stop (sndio_driver_t *driver)
{
	if (driver->hdl != NULL) {
		sio_close(driver->hdl);
		driver->hdl = NULL;
	}

	return 0;
}


static jack_nframes_t
sndio_driver_wait (sndio_driver_t *driver, int *status, float *iodelay)
{
	struct pollfd pfd;
	nfds_t snfds, nfds;
	jack_time_t poll_enter;
	jack_time_t poll_ret;
	int need_capture, need_playback;
	long long cap_avail, play_avail, used;
	int events, revents;

	*status = 0;
	*iodelay = 0;

	need_capture = need_playback = 0;
	cap_avail = play_avail = 0;

	if (driver->capture_channels != 0)
		need_capture = 1;

	if (driver->playback_channels != 0)
		need_playback = 1;

	poll_enter = jack_get_microseconds();
	if (poll_enter > driver->poll_next)
	{
		/* late. don't count as wakeup delay. */
		driver->poll_next = 0;
	}

	while (need_capture || need_playback)
	{
		events = revents = 0;
		if (need_capture != 0)
			events |= POLLIN;

		if (need_playback != 0)
			events |= POLLOUT;

		snfds = sio_nfds(driver->hdl);
		if (snfds != sio_pollfd(driver->hdl, &pfd, events)) {
			jack_error("sndio_driver: sio_pollfd failed: %s@%i",
				__FILE__, __LINE__);
			*status = -3;
			return 0;
		}
		nfds = poll(&pfd, snfds, driver->poll_timeout);
		if (nfds == -1)
		{
			jack_error("sndio_driver: poll() error: %s: %s@%i",  
				strerror(errno), __FILE__, __LINE__);
			*status = -3;
			return 0;
		}
		revents = sio_revents(driver->hdl, &pfd);
		if (revents & (POLLERR | POLLHUP | POLLNVAL))
		{
			jack_error("sndio_driver: poll() error: %s@%i",  
				__FILE__, __LINE__);
			*status = -3;
			return 0;
		}

		if (revents & POLLIN)
			need_capture = 0;

		if (revents & POLLOUT)
			need_playback = 0;

		if (sio_eof(driver->hdl))
		{
			jack_error("sndio_driver: sndio error");
			*status = -5;	/* restart */
			return 0;
		}

		if (driver->capture_channels > 0)
		{
			used = 0;
			if (driver->realpos > driver->cappos)
				used = driver->realpos - driver->cappos;
			cap_avail = used;
			if (cap_avail > driver->buffer_fill)
			{
				jack_error("sndio_driver: capture overrun");
			}
		}

		if (driver->playback_channels > 0)
		{
			used = 0;
			if (driver->playpos > driver->realpos)
				used = driver->playpos - driver->realpos;
			play_avail = driver->buffer_fill - used;
			if (play_avail > driver->buffer_fill)
			{
				jack_error("sndio_driver: playback underrun");
			}
		}

		if (driver->capture_channels > 0 &&
		    driver->playback_channels > 0)
		{
			if ((driver->realpos > 0 &&
				(play_avail != driver->period_size ||
				  cap_avail != driver->period_size) &&
				!(!play_avail && !cap_avail && !need_playback &&
				  need_capture)) ||
			    (driver->realpos == 0 &&
				!play_avail && !cap_avail && need_playback &&
				!need_capture))
			{
				jack_error("sndio_driver: out of sync: "
					"rp=%lld pa=%lld ca=%lld np=%d nc=%d",
					driver->realpos, play_avail, cap_avail,
					need_playback, need_capture);
				*status = -5;
				return 0;
			}
		}
	}

	poll_ret = jack_get_microseconds();

	if (driver->poll_next && poll_ret > driver->poll_next)
		*iodelay = poll_ret - driver->poll_next;

	driver->poll_last = poll_ret;
	driver->poll_next = poll_ret + driver->period_usecs;
	driver->engine->transport_cycle_start(driver->engine, poll_ret);

	driver->last_wait_ust = poll_ret;

	return driver->period_size;
}


static inline int
sndio_driver_run_cycle (sndio_driver_t *driver)
{
	jack_nframes_t nframes;
	jack_time_t now;
	int wait_status;
	float iodelay;

	nframes = sndio_driver_wait (driver, &wait_status, &iodelay);

	if (wait_status < 0)
	{
		switch (wait_status)
		{
		case -3:
			/* poll() error */
			return -1;
		case -5:
			/* xrun, restart */
			sndio_driver_stop(driver);
			driver->period_size = driver->orig_period_size;
			driver->nperiods = driver->orig_nperiods;
			sndio_driver_set_parameters(driver);
			sndio_driver_start(driver);

			if (driver->poll_next &&
				(now = jack_get_microseconds()) > driver->poll_next)
			{
				iodelay = now - driver->poll_next;
				driver->poll_next = now + driver->period_usecs;
				driver->engine->delay(driver->engine, iodelay);
				printf("sndio_driver: iodelay = %f\n", iodelay);
			}

			break;
		default:
			/* any other fatal error */
			return -1;
		}
	}

	return driver->engine->run_cycle(driver->engine, nframes, iodelay);
}


static void
copy_and_convert_in (jack_sample_t *dst, void *src, 
	size_t nframes,	int channel, int chcount, int bits)
{
	int srcidx;
	int dstidx;
	signed short *s16src = (signed short *) src;
	signed int *s32src = (signed int *) src;
	double *f64src = (double *) src;
	jack_sample_t scale;

	srcidx = channel;
	switch (bits)
	{
		case 16:
			scale = 1.0f / 0x7fff;
			for (dstidx = 0; dstidx < nframes; dstidx++)
			{
				dst[dstidx] = (jack_sample_t) 
					s16src[srcidx] * scale;
				srcidx += chcount;
			}
			break;
		case 24:
			scale = 1.0f / 0x7fffff;
			for (dstidx = 0; dstidx < nframes; dstidx++)
			{
				dst[dstidx] = (jack_sample_t)
					s32src[srcidx] * scale;
				srcidx += chcount;
			}
			break;
		case 32:
			scale = 1.0f / 0x7fffffff;
			for (dstidx = 0; dstidx < nframes; dstidx++)
			{
				dst[dstidx] = (jack_sample_t)
					s32src[srcidx] * scale;
				srcidx += chcount;
			}
			break;
		case 64:
			for (dstidx = 0; dstidx < nframes; dstidx++)
			{
				dst[dstidx] = (jack_sample_t) f64src[srcidx];
				srcidx += chcount;
			}
			break;
	}
}


static void
copy_and_convert_out (void *dst, jack_sample_t *src, 
	size_t nframes,	int channel, int chcount, int bits)
{
	int srcidx;
	int dstidx;
	signed short *s16dst = (signed short *) dst;
	signed int *s32dst = (signed int *) dst;
	double *f64dst = (double *) dst;
	jack_sample_t scale;

	dstidx = channel;
	switch (bits)
	{
		case 16:
			scale = 0x7fff;
			for (srcidx = 0; srcidx < nframes; srcidx++)
			{
				s16dst[dstidx] = (signed short)
					(src[srcidx] >= 0.0f) ?
					(src[srcidx] * scale + 0.5f) :
					(src[srcidx] * scale - 0.5f);
				dstidx += chcount;
			}
			break;
		case 24:
			scale = 0x7fffff;
			for (srcidx = 0; srcidx < nframes; srcidx++)
			{
				s32dst[dstidx] = (signed int)
					(src[srcidx] >= 0.0f) ?
					(src[srcidx] * scale + 0.5f) :
					(src[srcidx] * scale - 0.5f);
				dstidx += chcount;
			}
			break;
		case 32:
			scale = 0x7fffffff;
			for (srcidx = 0; srcidx < nframes; srcidx++)
			{
				s32dst[dstidx] = (signed int)
					(src[srcidx] >= 0.0f) ?
					(src[srcidx] * scale + 0.5f) :
					(src[srcidx] * scale - 0.5f);
				dstidx += chcount;
			}
			break;
		case 64:
			for (srcidx = 0; srcidx < nframes; srcidx++)
			{
				f64dst[dstidx] = (double) src[srcidx];
				dstidx += chcount;
			}
			break;
	}
}


/* jack driver interface */


static int
sndio_driver_attach (sndio_driver_t *driver)
{
	int port_flags;
	int channel;
	char channel_name[64];
	jack_port_t *port;

	driver->engine->set_buffer_size(driver->engine, driver->period_size);
	driver->engine->set_sample_rate(driver->engine, driver->sample_rate);

	port_flags = JackPortIsOutput|JackPortIsPhysical|JackPortIsTerminal;

	for (channel = 0; channel < driver->capture_channels; channel++)
	{
		snprintf(channel_name, sizeof(channel_name), 
			"capture_%u", channel + 1);
		port = jack_port_register(driver->client, channel_name,
			JACK_DEFAULT_AUDIO_TYPE, port_flags, 0);
		if (port == NULL)
		{
			jack_error("sndio_driver: cannot register port for %s: "
				"%s@%i", channel_name, __FILE__, __LINE__);
			break;
		}
		jack_port_set_latency(port,
			driver->period_size + driver->sys_cap_latency);
		driver->capture_ports = 
			jack_slist_append(driver->capture_ports, port);
	}

	port_flags = JackPortIsInput|JackPortIsPhysical|JackPortIsTerminal;
	for (channel = 0; channel < driver->playback_channels; channel++)
	{
		snprintf(channel_name, sizeof(channel_name),
			"playback_%u", channel + 1);
		port = jack_port_register(driver->client, channel_name,
			JACK_DEFAULT_AUDIO_TYPE, port_flags, 0);
		if (port == NULL)
		{
			jack_error("sndio_driver: cannot register port for "
				"%s: %s@%i", channel_name, __FILE__, __LINE__);
			break;
		}
		jack_port_set_latency(port,
			driver->period_size + driver->sys_play_latency);
		driver->playback_ports =
			jack_slist_append(driver->playback_ports, port);
	}

	return jack_activate(driver->client);
}


static int
sndio_driver_detach (sndio_driver_t *driver)
{
	JSList *node;

	if (driver->engine == NULL)
		return 0;

	node = driver->capture_ports;
	while (node != NULL)
	{
		jack_port_unregister(driver->client, 
			((jack_port_t *) node->data));
		node = jack_slist_next(node);
	}
	if (driver->capture_ports != NULL)
	{
		jack_slist_free(driver->capture_ports);
		driver->capture_ports = NULL;
	}

	node = driver->playback_ports;
	while (node != NULL)
	{
		jack_port_unregister(driver->client,
			((jack_port_t *) node->data));
		node = jack_slist_next(node);
	}
	if (driver->playback_ports != NULL)
	{
		jack_slist_free(driver->playback_ports);
		driver->playback_ports = NULL;
	}

	return 0;
}


static int
sndio_driver_read (sndio_driver_t *driver, jack_nframes_t nframes)
{
	jack_nframes_t nbytes, offset;
	int channel;
	size_t io_res;
	jack_sample_t *portbuf;
	JSList *node;
	jack_port_t *port;

	if (driver->engine->freewheeling || driver->capture_channels == 0)
		return 0;

	if (nframes > driver->period_size)
	{
		jack_error("sndio_driver: read failed: nframes > period_size: "
			"(%u/%u): %s@%i", nframes, driver->period_size,
			__FILE__, __LINE__);
		return -1;
	}

	node = driver->capture_ports;
	channel = 0;
	while (node != NULL)
	{
		port = (jack_port_t *) node->data;

		if (jack_port_connected(port))
		{
			portbuf = jack_port_get_buffer(port, nframes);
			copy_and_convert_in(portbuf, driver->capbuf, 
				nframes, channel, 
				driver->capture_channels,
				driver->bits);
		}

		node = jack_slist_next(node);
		channel++;
	}

	io_res = offset = 0;
	nbytes = nframes * driver->capture_channels * driver->sample_bytes;
	while (nbytes > 0)
	{
		io_res = sio_read(driver->hdl, driver->capbuf + offset, nbytes);
		if (io_res == 0)
		{
			jack_error("sndio_driver: sio_read() failed: %s@%i",
				__FILE__, __LINE__);
			break;
		}
		offset += io_res;
		nbytes -= io_res;
	}
	driver->cappos += nframes;

	return 0;
}


static int
sndio_driver_write (sndio_driver_t *driver, jack_nframes_t nframes)
{
	jack_nframes_t nbytes;
	int channel;
	size_t io_res, offset;
	jack_sample_t *portbuf;
	JSList *node;
	jack_port_t *port;


	if (driver->engine->freewheeling || driver->playback_channels == 0)
		return 0;

	if (nframes > driver->period_size)
	{
		jack_error("sndio_driver: write failed: nframes > period_size "
			"(%u/%u): %s@%i", nframes, driver->period_size,
			__FILE__, __LINE__);
		return -1;
	}

	bzero(driver->playbuf, driver->playbufsize);

	node = driver->playback_ports;
	channel = 0;
	while (node != NULL)
	{
		port = (jack_port_t *) node->data;

		if (jack_port_connected(port))
		{
			portbuf = jack_port_get_buffer(port, nframes);
			copy_and_convert_out(driver->playbuf, portbuf, 
				nframes, channel,
				driver->playback_channels,
				driver->bits);
		}

		node = jack_slist_next(node);
		channel++;
	}

	nbytes = nframes * driver->playback_channels * driver->sample_bytes;
	io_res = offset = 0;
	while (nbytes > 0)
	{
		io_res = sio_write(driver->hdl, driver->playbuf + offset, nbytes);
		if (io_res == 0)
		{
			jack_error("sndio_driver: sio_write() failed: %s@%i",
				__FILE__, __LINE__);
			break;
		}
		offset += io_res;
		nbytes -= io_res;
	}
	driver->playpos += nframes;

	return 0;
}


static int
sndio_driver_null_cycle (sndio_driver_t *driver, jack_nframes_t nframes)
{
	if (nframes > driver->period_size)
	{
		jack_error("sndio_driver: null cycle failed: "
			"nframes > period_size (%u/%u): %s@%i", nframes,
			driver->period_size, __FILE__, __LINE__);
		return -1;
	}

	printf("sndio_driver: running null cycle\n");

	if (driver->playback_channels != 0)
		sndio_driver_write_silence (driver, nframes);

	if (driver->capture_channels != 0)
		sndio_driver_read_silence (driver, nframes);

	return 0;
}


static int
sndio_driver_bufsize (sndio_driver_t *driver, jack_nframes_t nframes)
{
	return sndio_driver_set_parameters(driver);
}


static void
sndio_driver_delete (sndio_driver_t *driver)
{
	if (driver->hdl != NULL)
	{
		sio_close(driver->hdl);
		driver->hdl = NULL;
	}

	if (driver->capbuf != NULL)
	{
		free(driver->capbuf);
		driver->capbuf = NULL;
	}
	if (driver->playbuf != NULL)
	{
		free(driver->playbuf);
		driver->playbuf = NULL;
	}

	if (driver->dev != NULL)
	{
		free(driver->dev);
		driver->dev = NULL;
	}

	jack_driver_nt_finish((jack_driver_nt_t *) driver);

	if (driver != NULL)
	{
		free(driver);
		driver = NULL;
	}
}


void
driver_finish (jack_driver_t *driver)
{
	sndio_driver_delete ((sndio_driver_t *)driver);
}


static jack_driver_t *
sndio_driver_new (char *dev, jack_client_t *client,
	jack_nframes_t sample_rate, jack_nframes_t period_size,
	jack_nframes_t nperiods, int bits,
	int capture_channels, int playback_channels,
	jack_nframes_t cap_latency, jack_nframes_t play_latency,
	int ignorehwbuf)
{
	sndio_driver_t *driver;

	driver = (sndio_driver_t *) malloc(sizeof(sndio_driver_t));
	if (driver == NULL)
	{
		jack_error("sndio_driver: malloc() failed: %s: %s@%i",
			strerror(errno), __FILE__, __LINE__);
		return NULL;
	}
	driver->engine = NULL;
	jack_driver_nt_init((jack_driver_nt_t *) driver);

	driver->nt_attach = (JackDriverNTAttachFunction) sndio_driver_attach;
	driver->nt_detach = (JackDriverNTDetachFunction) sndio_driver_detach;
	driver->read = (JackDriverReadFunction) sndio_driver_read;
	driver->write = (JackDriverWriteFunction) sndio_driver_write;
	driver->null_cycle = (JackDriverNullCycleFunction) 
		sndio_driver_null_cycle;
	driver->nt_bufsize = (JackDriverNTBufSizeFunction) sndio_driver_bufsize;
	driver->nt_start = (JackDriverNTStartFunction) sndio_driver_start;
	driver->nt_stop = (JackDriverNTStopFunction) sndio_driver_stop;
	driver->nt_run_cycle = (JackDriverNTRunCycleFunction) sndio_driver_run_cycle;

	if (dev != NULL)
		driver->dev = strdup(dev);
	else
		driver->dev = NULL;

	driver->ignorehwbuf = ignorehwbuf;

	driver->sample_rate = sample_rate;
	driver->period_size = period_size;
	driver->orig_period_size = period_size;
	driver->nperiods = nperiods;
	driver->orig_nperiods = nperiods;
	driver->bits = bits;
	driver->capture_channels = capture_channels;
	driver->playback_channels = playback_channels;
	driver->sys_cap_latency = cap_latency;
	driver->sys_play_latency = play_latency;

	set_period_size(driver, period_size);
	
	driver->hdl = NULL;
	driver->capbuf = driver->playbuf = NULL;
	driver->capture_ports = driver->playback_ports = NULL;

	driver->iodelay = 0.0F;
	driver->poll_last = driver->poll_next = 0;

	if (sndio_driver_set_parameters (driver) < 0)
	{
		free(driver);
		return NULL;
	}

	driver->client = client;

	return (jack_driver_t *) driver;
}


/* jack driver published interface */


const char driver_client_name[] = "sndio";


jack_driver_desc_t *
driver_get_descriptor ()
{
	jack_driver_desc_t *desc;
	jack_driver_param_desc_t *params;

	desc = (jack_driver_desc_t *) calloc(1, sizeof(jack_driver_desc_t));
	if (desc == NULL)
	{
		jack_error("sndio_driver: calloc() failed: %s: %s@%i",
			strerror(errno), __FILE__, __LINE__);
		return NULL;
	}
	strcpy(desc->name, driver_client_name);
	desc->nparams = SNDIO_DRIVER_N_PARAMS;

	params = calloc(desc->nparams, sizeof(jack_driver_param_desc_t));
	if (params == NULL)
	{
		jack_error("sndio_driver: calloc() failed: %s: %s@%i",
			strerror(errno), __FILE__, __LINE__);
		return NULL;
	}
	memcpy(params, sndio_params, 
		desc->nparams * sizeof(jack_driver_param_desc_t));
	desc->params = params;

	return desc;
}


jack_driver_t *
driver_initialize (jack_client_t *client, JSList * params)
{
	int bits = SNDIO_DRIVER_DEF_BITS;
	jack_nframes_t sample_rate = SNDIO_DRIVER_DEF_FS;
	jack_nframes_t period_size = SNDIO_DRIVER_DEF_BLKSIZE;
	jack_nframes_t cap_latency = 0;
	jack_nframes_t play_latency = 0;
	unsigned int nperiods = SNDIO_DRIVER_DEF_NPERIODS;
	unsigned int capture_channels = SNDIO_DRIVER_DEF_INS;
	unsigned int playback_channels = SNDIO_DRIVER_DEF_OUTS;
	const JSList *pnode;
	const jack_driver_param_t *param;
	char *dev = NULL;
	int ignorehwbuf = 0;

	pnode = params;
	while (pnode != NULL)
	{
		param = (const jack_driver_param_t *) pnode->data;

		switch (param->character)
		{
			case 'r':
				sample_rate = param->value.ui;
				break;
			case 'p':
				period_size = param->value.ui;
				break;
			case 'n':
				nperiods = param->value.ui;
				break;
			case 'w':
				bits = param->value.i;
				break;
			case 'i':
				capture_channels = param->value.ui;
				break;
			case 'o':
				playback_channels = param->value.ui;
				break;
			case 'd':
				dev = strdup(param->value.str);
				break;
			case 'b':
				ignorehwbuf = 1;
				break;
			case 'I':
				cap_latency = param->value.ui;
				break;
			case 'O':
				play_latency = param->value.ui;
				break;
		}
		pnode = jack_slist_next(pnode);
	}

	return sndio_driver_new (dev, client, sample_rate, period_size,
		nperiods, bits, capture_channels, playback_channels,
		cap_latency, play_latency, ignorehwbuf);
}
