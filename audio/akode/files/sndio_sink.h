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

#ifndef _AKODE_SNDIO_SINK_H
#define _AKODE_SNDIO_SINK_H

#include "sink.h"

#include "akode_export.h"

namespace aKode {

class AudioConfiguration;
class AudioFrame;

class SndioSink : public Sink {
public:
	SndioSink();
	~SndioSink();
	bool open();
	void close();
	int setAudioConfiguration(const AudioConfiguration *config);
	const AudioConfiguration* audioConfiguration() const;
	bool writeFrame(AudioFrame *frame);
	struct private_data;
private:
	template<class T> void _writeFrame(AudioFrame *frame);
	private_data *d;
};

class SndioSinkPlugin : public SinkPlugin {
public:
	virtual SndioSink* openSink() {
		return new SndioSink();
	}
};

extern "C" AKODE_EXPORT SndioSinkPlugin sndio_sink;

} // namespace

#endif
