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

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <poll.h>

#include <sndio.h>

#include "mpegsound.h"
#include "mpegsound_locals.h"


Sndioplayer::Sndioplayer()
{
	this->hdl = NULL;
}

Sndioplayer::~Sndioplayer()
{
	if (this->hdl) {
		sio_close(this->hdl);
		this->hdl = NULL;
	}
}

void
Sndioplayer::abort()
{
}

bool
Sndioplayer::setsoundtype(int stereo, int samplesize, int speed)
{
	debug("Sndioplayer::setsoundtype()\n");

	rawstereo = stereo;
	rawsamplesize = samplesize;
	rawspeed = speed;

	return resetsoundtype();
}

void
Sndioplayer::set8bitmode()
{
}

bool
Sndioplayer::resetsoundtype()
{
	struct sio_par par;

	debug("Sndioplayer::resetsoundtype()\n");

	if (this->hdl) {
		sio_stop(this->hdl);
	} else {
		this->hdl = sio_open(NULL, SIO_PLAY, 0);
		if (!this->hdl) {
			debug("sio_open failed\n");
			seterrorcode(SOUND_ERROR_DEVOPENFAIL);
			return false;
		}
	}

	sio_initpar(&par);

	/* if one of these is 0, default to reasonable (CD audio) values */
	if (rawsamplesize == 0 || rawspeed == 0) {
		rawstereo = 1;
		rawsamplesize = 16;
		rawspeed = 44100;
	}

	par.pchan = (rawstereo ? 2 : 1);
	par.rate = rawspeed ? rawspeed : 44100;
	par.bits = rawsamplesize ? rawsamplesize : 16;
	par.sig = 1;
	par.appbufsz = 4096;

	if (!sio_setpar(this->hdl, &par) || !sio_getpar(this->hdl, &par)) {
		debug("sio_setpar failed\n");
		seterrorcode(SOUND_ERROR_DEVOPENFAIL);
		return false;
	}

	if (par.pchan != (rawstereo ? 2 : 1) || par.rate != rawspeed ||
	    par.bits != rawsamplesize || par.sig != 1) {
		debug("could not configure sndio device as requested\n");
		debug("wanted/got: bits %d/%d, pchan %d/%d, rate %d/%d \n",
		  rawsamplesize, par.bits, (rawstereo ? 2 : 1), par.pchan,
		  rawspeed, par.rate);
		seterrorcode(SOUND_ERROR_DEVOPENFAIL);
		return false;
	}

	rawblocksize = par.round * par.bps * par.pchan;

	if (!sio_start(this->hdl)) {
		debug("sio_start failed\n");
		seterrorcode(SOUND_ERROR_DEVOPENFAIL);
		return false;
	}

	return true;
}

void 
Sndioplayer::releasedevice()
{
	debug("Sndioplayer::releasedevice()\n");

	if (this->hdl) {
		sio_close(this->hdl);
		this->hdl = NULL;
	}
}

bool
Sndioplayer::attachdevice()
{
	debug("Sndioplayer::attachdevice()\n");

	if (!this->hdl)
		return resetsoundtype();

	return true;
}

bool
Sndioplayer::putblock(void *buffer, int size)
{
	struct pollfd pfd;
	nfds_t nfds;
	int ret, done;

	//debug("Sndioplayer::putblock(), size=%d\n", size);

	if (!this->hdl)
		return false;

	done = 0;
	while (done < size) {
		nfds = sio_pollfd(this->hdl, &pfd, POLLOUT);
		ret = poll(&pfd, nfds, INFTIM);
		if (!(sio_revents(this->hdl, &pfd) & POLLOUT))
			continue;
		ret = sio_write(this->hdl, (unsigned char *)buffer + done,
		    size - done);
		if (!ret) {
			debug("sio_write failed\n");
			return false;
		}
		done += ret;
	}

	return true;
}

int
Sndioplayer::putblock_nt(void *buffer, int size)
{
	debug("Sndioplayer::putblock_nt(), size=%d\n", size);

	if (!this->hdl)
		return -1;

	return sio_write(this->hdl, buffer, size);
}

int
Sndioplayer::getblocksize()
{
	debug("Sndioplayer::getblocksize(), rawblocksize=%d\n", rawblocksize);

	return rawblocksize;
}

int
Sndioplayer::fix_samplesize(void *buffer, int size)
{
	(void)buffer;

	return size;
}

#endif /* WANT_SNDIO */
