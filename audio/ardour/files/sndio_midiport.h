/*
 * Copyright (c) 2012 Stefan Sperling <stsp@openbsd.org>
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

#ifndef __sndio_midiport_h__
#define __sndio_midiport_h__

#include <list>
#include <string>
#include <vector>

#include <midi++/port.h>

#include <sndio.h>

namespace MIDI {

    class SndioMidi_MidiPort:public Port {
      public:
	SndioMidi_MidiPort(const XMLNode& node);
	virtual ~ SndioMidi_MidiPort();

	virtual int selectable() const;

	static int discover(std::vector<PortSet>&);
	static std::string typestring;

      protected:
	/* Direct I/O */

	int write(byte * msg, size_t msglen);
	int read(byte * buf, size_t max);

	std::string get_typestring() const {
		return typestring;
	}

      private:
	struct mio_hdl *hdl;
	int poll(int event) const;
	struct pollfd *pfd;
    };

} // namespace MIDI

#endif	// __sndio_midiport_h__
