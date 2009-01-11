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

#ifndef __JACK_SNDIO_DRIVER_H__
#define __JACK_SNDIO_DRIVER_H__

#include <sys/types.h>
#include <pthread.h>
#include <semaphore.h>

#include <jack/types.h>
#include <jack/jslist.h>
#include <jack/driver.h>
#include <jack/jack.h>

#define SNDIO_DRIVER_DEF_DEV		"/dev/audio"
#define SNDIO_DRIVER_DEF_FS		44100
#define SNDIO_DRIVER_DEF_BLKSIZE	1024
#define SNDIO_DRIVER_DEF_NPERIODS	2
#define SNDIO_DRIVER_DEF_BITS		16
#define SNDIO_DRIVER_DEF_INS		2
#define SNDIO_DRIVER_DEF_OUTS		2

typedef jack_default_audio_sample_t jack_sample_t;

typedef struct _sndio_driver
{
	JACK_DRIVER_NT_DECL

	jack_nframes_t sample_rate;
	jack_nframes_t period_size;
	jack_nframes_t orig_period_size;
	unsigned int nperiods;
	unsigned int orig_nperiods;
	int bits;
	int sample_bytes;
	unsigned int capture_channels;
	unsigned int playback_channels;

	char *dev;
	struct sio_hdl *hdl;
	int format;
	int ignorehwbuf;

	size_t capbufsize;
	size_t playbufsize;
	size_t portbufsize;
	void *capbuf;
	void *playbuf;
	size_t buffer_fill;

	int poll_timeout;
	jack_time_t poll_last;
	jack_time_t poll_next;
	float iodelay;

	long long realpos, playpos, cappos;

	jack_nframes_t sys_cap_latency;
	jack_nframes_t sys_play_latency;

	JSList *capture_ports;
	JSList *playback_ports;

	jack_client_t *client;

	int playback_drops;
	int capture_drops;

} sndio_driver_t;


#endif

