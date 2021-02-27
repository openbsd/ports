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

#ifndef SNDIO_MIDI_DRIVER_H
#define SNDIO_MIDI_DRIVER_H

#include <hydrogen/IO/MidiInput.h>
#include <hydrogen/IO/MidiOutput.h>

#ifdef H2CORE_HAVE_SNDIO

#include <sndio.h>

namespace H2Core
{

class SndioMidiDriver : public virtual MidiInput, public virtual MidiOutput
{
	H2_OBJECT
public:
	struct mio_hdl *hdl;
	bool m_bRunning;

	SndioMidiDriver();
	virtual ~SndioMidiDriver();

	virtual void open();
	virtual void close();
	virtual std::vector<QString> getInputPortList();
	virtual std::vector<QString> getOutputPortList();

	virtual void handleQueueNote( Note* pNote );
	virtual void handleQueueNoteOff( int channel, int key, int velocity );
	virtual void handleQueueAllNoteOff();
	virtual void handleOutgoingControlChange( int param, int value, int channel );

private:

};

};

#endif

#endif

