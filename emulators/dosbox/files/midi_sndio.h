/*
 *  Copyright (C) 2002-2010  The DOSBox Team
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
 */

#include <sndio.h>

class MidiHandler_sndio: public MidiHandler {
private:
	struct mio_hdl *hdl;
public:
	MidiHandler_sndio() : MidiHandler(), hdl(NULL) {};
	const char * GetName(void) { return "sndio"; }
	bool Open(const char * conf) {
		if (hdl) return false;
		hdl = mio_open((conf && conf[0]) ? conf : MIO_PORTANY, MIO_OUT, 0);
		return (hdl != NULL);
	};
	void Close(void) {
		if (!hdl) return;
		mio_close(hdl);
		hdl = NULL;
	};
	void PlayMsg(Bit8u * msg) {
		Bitu len=MIDI_evt_len[*msg];
		if (hdl) mio_write(hdl, msg, len);
	};
	void PlaySysex(Bit8u * sysex,Bitu len) {
		if (hdl) mio_write(hdl, sysex, len);
	}
};

MidiHandler_sndio Midi_sndio;
