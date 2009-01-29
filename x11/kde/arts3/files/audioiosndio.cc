/*
 * Copyright (c) 2008 Jacob Meuser <jakemsr@sdf.lonestar.org>
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
	#include <config.h>
#endif

#include <sys/types.h>

#include <sndio.h>
#include <poll.h>

#include "debug.h"
#include "audioio.h"
#include "audiosubsys.h"
#include "iomanager.h"
#include "dispatcher.h"

#include <cstdlib>
#include <cstring>

int bps, chans;
long long realpos, playpos, recpos;

void movecb(void *addr, int delta)
{
	realpos += delta * (int)(bps * chans);
}

namespace Arts {

class AudioIOSNDIO : public AudioIO, public TimeNotify {

protected:
	struct sio_hdl *hdl;
	struct sio_par par;
	int bufsz;
	int bufused;
	int duplex;

public:
	AudioIOSNDIO();

	void notifyTime();

	void setParam(AudioParam param, int& value);
	int getParam(AudioParam param);

	bool open();
	void close();
	int read(void *buffer, int size);
	int write(void *buffer, int size);
};

REGISTER_AUDIO_IO(AudioIOSNDIO,"sndio","libsndio");
}

using namespace std;
using namespace Arts;

AudioIOSNDIO::AudioIOSNDIO()
{
	/* default parameters */
	param(samplingRate) = 48000;
	paramStr(deviceName) = "";
	param(fragmentSize) = 4096;
	param(fragmentCount) = 4;
	param(format) = 16;
	param(channels) = 2;
	param(direction) = directionWrite;
}

bool AudioIOSNDIO::open()
{
	string& _error = paramStr(lastError);
	string& _deviceName = paramStr(deviceName);
	int& _channels = param(channels);
	int& _fragmentSize = param(fragmentSize);
	int& _fragmentCount = param(fragmentCount);
	int& _samplingRate = param(samplingRate);
	int& _format = param(format);

	struct sio_par testpar;
	char dev[PATH_MAX];
	int mode, bpf;

	duplex = 0;
	if (param(direction) == (directionRead | directionWrite)) {
		mode = SIO_PLAY | SIO_REC;
		duplex = 1;
	} else if (param(direction) == directionWrite) {
		mode = SIO_PLAY;
	} else {
		_error = "invalid direction";
		return false;
	}

	strlcpy(dev, _deviceName.c_str(), PATH_MAX);

	if (strcmp(dev, "") == 0)
		hdl = sio_open(NULL, mode, 0);
	else
		hdl = sio_open(dev, mode, 0);

	if (hdl == NULL) {
		_error = "device ";
		if (strcmp(_deviceName.c_str(), "") == 0)
			_error += "(default sndio device)";
		else
			_error += _deviceName.c_str();
		_error += " can't be opened";
		return false;
	}

	sio_initpar(&par);

	if (_format == 8) {
		par.bits = 8;
		par.sig = 0;
	} else {
		par.bits = 16;
		par.sig = 1;
		par.le = 1;
	}

	if (duplex)
		par.pchan = par.rchan = _channels;
	else
		par.pchan = _channels;

	par.rate = _samplingRate;

	/* limit the buffer size for hardware constraints */

	if (_fragmentSize > 1024*16)
		_fragmentSize = 1024*16;

	while (_fragmentSize * _fragmentCount > 1024*32)
		_fragmentCount--;

	bpf = ((par.bits / NBBY) * par.pchan);
	par.round = _fragmentSize / bpf;
	par.appbufsz = _fragmentSize * _fragmentCount / bpf;

	testpar = par;

	char details[128];

	snprintf(details, 128, " rate=%d pchan=%d bits=%d le=%d sig=%d sz=%d",
	    par.rate, par.pchan, par.bits, par.le, par.sig, par.appbufsz);

	if (!sio_setpar(hdl, &par)) {
		_error = "sio_setpar failed:";
		_error += details;

		close();
		return false;
	}

	if (!sio_getpar(hdl, &par)) {
		_error = "sio_getpar failed";

		close();
		return false;
	}

	if (testpar.bits != par.bits ||
	    testpar.sig != par.sig ||
	    testpar.le != par.le ||
	    testpar.pchan != par.pchan ||
	    fabs((testpar.rate - par.rate)/testpar.rate) > 0.05) {
		_error = "returned params do not match requested params";

		close();
		return false;
	}

	bpf = par.pchan * par.bps;
	bufsz = par.bufsz * bpf;

	::bps = par.bps;
	::chans = par.pchan;
	::realpos = ::playpos = ::recpos = 0;

	sio_onmove(hdl, ::movecb, NULL);

	if (!sio_start(hdl)) {
		_error = "sio_start failed";

		close();
		return false;
	}

	/* use a timer instead of select() */
	Dispatcher::the()->ioManager()->addTimer(10, this);

	return true;
}

void AudioIOSNDIO::close()
{
	if (hdl != NULL) {
		sio_close(hdl);
		hdl = NULL;
	}
}

void AudioIOSNDIO::setParam(AudioParam p, int& value)
{
	param(p) = value;
}

int AudioIOSNDIO::getParam(AudioParam p)
{
	struct pollfd gpfd;
	int n, events;

	/* update ::realpos */
	if ((p == canRead || p == canWrite) && hdl != NULL) {
		events = POLLOUT;
		if (duplex)
			events |= POLLIN;
		n = sio_pollfd(hdl, &gpfd, events);
		while (poll(&gpfd, n, 0) < 0 && errno == EINTR)
			;
		sio_revents(hdl, &gpfd);
	}

	switch(p) {
	case canRead:
		bufused = (::realpos - ::recpos < 0) ? 0 : ::realpos - ::recpos;
		return bufused;
		break;
	case canWrite:
		bufused = (::realpos < 0) ? ::playpos : ::playpos - ::realpos;
		return bufsz - bufused;
		break;
	case autoDetect:
		return 15;
		break;
	default:
		return param(p);
		break;
	}
}

int AudioIOSNDIO::read(void *buffer, int size)
{
	arts_assert(hdl != NULL);

	size_t result;

	result = sio_read(hdl, buffer, size);

	::recpos += result;

	return (int)result;
}

int AudioIOSNDIO::write(void *buffer, int size)
{
	arts_assert(hdl != NULL);

	size_t result;

	result = sio_write(hdl, buffer, size);

	::playpos += result;

	return (int)result;
}

void AudioIOSNDIO::notifyTime()
{
	int& _direction = param(direction);

	for (;;) {
		int todo = 0;

		if ((_direction & directionRead) && (getParam(canRead) > 0))
			todo |= AudioSubSystem::ioRead;

		if ((_direction & directionWrite) && (getParam(canWrite) > 0))
			todo |= AudioSubSystem::ioWrite;

		if (todo == 0)
			return;

		AudioSubSystem::the()->handleIO(todo);
	}
}
