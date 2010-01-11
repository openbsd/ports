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


#ifdef HAVE_CONFIG_H
# include "config.h"
#endif

#ifdef WANT_SNDIO

#include <poll.h>
#include <string.h>

#include <sndio.h>

#include "nmixer.h"


void *readVols(void *v)
{
	struct sdata *s = (struct sdata *)v;
	struct pollfd pfd;
	nfds_t nfds;
	char buf[1], data[2], status = 0;
	int count = 0;

	while (s->run_rt) {
		nfds = mio_pollfd(s->hdl, &pfd, POLLIN);
		if (poll(&pfd, nfds, 100) < 0)
			break;
		if (!(mio_revents(s->hdl, &pfd) & POLLIN))
			continue;
		if (!mio_read(s->hdl, buf, 1))
			break;
		if (buf[0] & 0x80) {		/* status byte */
			status = buf[0];
			count = 0;
			continue;
		}
		if ((status & 0xf0) != 0xb0)	/* not a controller */
			continue;
		data[count++] = buf[0];
		if (count < 2)			/* message not complete */
			continue;
		if (data[0] != 0x07)		/* not volume */
			continue;
		s->cvol[status & 0xf] = data[1] * 100 / 127;
		count = 0;
	}
	pthread_exit(NULL);
}

SndioMixer::SndioMixer(const char *mixerDevice, baseMixer *next) : baseMixer(mixerDevice, next)
{
	int i;

	s.hdl = mio_open(mixerDevice, MIO_OUT | MIO_IN, 0);
	if (!s.hdl) {
		/* printf("could not open aucat volume socket\n"); */
		return;
	}
	s.dev = strdup(mixerDevice);

	/* separate device for each channel */
	for (i = 0; i < 16; i++) {
		AddDevice(i);
		/* not sure how to get volume of already connected clients */
		s.cvol[i] = 100;
	}

	s.run_rt = 1;
	pthread_create(&rt, NULL, readVols, (void *)&s);
}

SndioMixer::~SndioMixer()
{
	s.run_rt = 0;
	pthread_join(rt, NULL);

	if (s.hdl)
		mio_close(s.hdl);
	s.hdl = NULL;
}

bool SndioMixer::Set(int device, struct volume *vol)
{
	char msg[3];
	int v, vm;

	if (!s.hdl)
		return false;

	if (device < 0 || device > 16)
		return false;

	v = (vol->left + vol->right) / 2;
	vm = v * 127 / 100;
	if (vm < 1)
		vm = 1;
	else if (vm > 127)
		vm = 127;

	msg[0] = 0xb0 | device;
	msg[1] = 0x07;
	msg[2] = vm;
	if (mio_write(s.hdl, msg, 3) != 3) {
		/* printf("mio_write failed\n"); */
		return false;
	}
	s.cvol[device] = v;

	return true;
}

bool SndioMixer::Get(int device, struct volume *vol)
{
	if (!s.hdl)
		return false;

	if (device < 0 || device > 16)
		return false;

	vol->left = vol->right = s.cvol[device];

	return true;
}

const char *SndioMixer::Label(int device)
{
	char *dev;

	dev = (char *)malloc(128);

	snprintf(dev, 128, "%s.%d", s.dev, device);

	return dev;
}

#endif /* WANT_SNDIO */
