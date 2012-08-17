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

#include <cstdlib>
#include <poll.h>

#include <pbd/xml++.h>

#include <midi++/sndio_midiport.h>
#include <midi++/types.h>

#include "i18n.h"

using namespace std;
using namespace MIDI;

SndioMidi_MidiPort::SndioMidi_MidiPort(const XMLNode& node) : Port(node)
{
	const char *dev;

	Descriptor desc(node);

	if (strcmp(desc.device.c_str(), "ardour") == 0)
		dev = NULL; /* default */
	else
		dev = desc.device.c_str();
	hdl = mio_open(dev, MIO_IN | MIO_OUT, 1);
	if (hdl) {
		pfd = new struct pollfd[mio_nfds(hdl)];
		_ok = true;
	}
}

SndioMidi_MidiPort::~SndioMidi_MidiPort()
{
	if (hdl) {
		mio_close(hdl);
		delete[] pfd;
	}
}

int SndioMidi_MidiPort::poll(int event) const
{
	int n = mio_pollfd(hdl, pfd, event);
	if (n == 0)
		return -1;

	if (::poll(pfd, n, 100) < 0)
		return -1;

	int revents = mio_revents(hdl, pfd);
	if (revents & event) {
		for (unsigned int i = 0; i < sizeof(pfd)/sizeof(pfd[0]); i++) {
			if (pfd[i].revents & event)
				return pfd[i].fd;
		}
	}

	return -1;
}

int SndioMidi_MidiPort::read(byte *buf, size_t max)	
{
	if (mio_eof(hdl)) {
		cerr << "sndio MIDI read error" << endl;
		return 0;
	}

	if (input_parser) {
		size_t n = mio_read(hdl, buf, max);
		if (n == 0)
			return 0;
		input_parser->raw_preparse(*input_parser, buf, n);
		for (unsigned int i = 0; i < n; i++)
			input_parser->scanner(buf[i]);
		input_parser->raw_postparse(*input_parser, buf, n);
		return (int)n;
	}

	return 0;
}

int SndioMidi_MidiPort::write(byte *buf, size_t len)
{
	if (mio_eof(hdl)) {
		cerr << "sndio MIDI write error" << endl;
		return 0;
	}

	return (int)mio_write(hdl, buf, len);
}

int 
SndioMidi_MidiPort::selectable() const
{
	return poll(POLLIN|POLLOUT);
}

int
SndioMidi_MidiPort::discover(vector<PortSet>& ports)
{
	int ret = 0;

	/* Try to find usable sndio midi ports.
	 * Users can add additional ports manually. */
	for (int n = 0; n < 8; n++) {
		std::string dev_name = "rmidi/" + n;
		struct mio_hdl *hdl;
		
		hdl = mio_open(dev_name.c_str(), MIO_IN | MIO_OUT, 1);
		if (hdl) {
			mio_close(hdl);
			XMLNode node(X_("MIDI-port"));
			node.add_property("tag", "ardour");
			node.add_property("device", dev_name);
			node.add_property("type", "sndio");
			node.add_property("mode", "duplex");
			ports.back().ports.push_back(node);
			ret = 1;
		}
	}
	return ret;
}
