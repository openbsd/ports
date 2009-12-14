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

#include <sndio.h>

#include <string.h>
#include <unistd.h>

#include <audioframe.h>
#include "sndio_sink.h"

#include <iostream>

namespace aKode {

extern "C" { SndioSinkPlugin sndio_sink; }

struct SndioSink::private_data
{
	private_data() : hdl(0), valid(false) {};
	struct sio_hdl *hdl;
	struct sio_par par;

	AudioConfiguration config;
	bool valid;
};

SndioSink::SndioSink()
{
	d = new private_data;
}

SndioSink::~SndioSink()
{
	close();
	delete d;
}

bool
SndioSink::open()
{
	d->hdl = ::sio_open(NULL, SIO_PLAY, 0);

	if (d->hdl == NULL) {
		std::cerr << "akode: could not open sndio device\n";
		goto failed;
	}
	if (!sio_start(d->hdl)) {
		std::cerr << "akode: could not start sndio device\n";
		goto failed;
	}
	d->valid = true;
	return true;

failed:
	d->valid = false;
	return false;
}

void
SndioSink::close() {
	if (d->hdl != NULL)
		::sio_close(d->hdl);
	d->hdl = NULL;
	d->valid = false;
}

int
SndioSink::setAudioConfiguration(const AudioConfiguration* config)
{
	d->config = *config;

	if (d->valid)
		sio_stop(d->hdl);

	sio_initpar(&d->par);

	if (config->sample_width < 0) {
		d->par.bits = 16;
		d->par.sig = 1;
	} else {
		d->par.bits = config->sample_width;
		if (d->par.bits == 8)
			d->par.sig = 0;
		else
			d->par.sig = 1;
	}
	d->par.pchan = config->channels;
	d->par.rate = config->sample_rate;

	if (!sio_setpar(d->hdl, &d->par)) {
		d->valid = false;
		return -1;
	}
	if (!sio_getpar(d->hdl, &d->par)) {
		d->valid = false;
		return -1;
	}

	d->config.sample_width = d->par.bits;
	d->config.sample_rate = d->par.rate;
	d->config.channels = d->par.pchan;
	if (d->config.channels <= 2)
		d->config.channel_config = MonoStereo;

	if (!sio_start(d->hdl)) {
		std::cerr << "akode: could not restart sndio device\n";
		d->valid = false;
		return -1;
	}

	if (d->config == *config)
		return 0;
	else
		return 1;
}

const AudioConfiguration*
SndioSink::audioConfiguration() const
{
	return &d->config;
}

bool
SndioSink::writeFrame(AudioFrame* frame)
{
	if (!d->valid)
		return false;

	if (frame->sample_width != d->config.sample_width ||
	    frame->channels != d->config.channels ) {
		if (setAudioConfiguration(frame) < 0)
			return false;
	}

	int channels = d->config.channels;
	int length = frame->length;

	int16_t *buffer = (int16_t*)alloca(length*channels*2);
	int16_t** data = (int16_t**)frame->data;
	for (int i = 0; i < length; i++)
		for (int j = 0; j < channels; j++)
			buffer[i * channels + j] = data[j][i];

//	std::cerr << "Writing frame\n";
	int status = 0;
	do {
		status = ::sio_write(d->hdl, buffer, channels * length * 2);
		if (status == 0) {
			return false;
		}
	} while(false);

	return true;
}

} // namespace
