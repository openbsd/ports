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

#include <hydrogen/IO/SndioMidiDriver.h>

#ifdef H2CORE_HAVE_SNDIO

#include <poll.h>
#include <pthread.h>
#include <hydrogen/hydrogen.h>
#include <hydrogen/basics/note.h>
#include <hydrogen/basics/instrument.h>
#include <hydrogen/basics/instrument_list.h>
#include <hydrogen/Preferences.h>

namespace H2Core
{

const char* SndioMidiDriver::__class_name = "SndioMidiDriver";

pthread_t SndioMidiDriverThread;

void* SndioMidiDriver_thread( void* param )
{
	Object* __object = ( Object* )param;
	SndioMidiDriver *instance = ( SndioMidiDriver* )param;
	MidiMessage msg;
	struct pollfd pfd;
	nfds_t nfds;
	unsigned char buf[1], sysex_data[256], status = 0;
	int i, msglen, count = 0, sysex_len = 0;

	__INFOLOG("SndioMidiDriver_thread starting");

	while (instance->m_bRunning) {
		nfds = mio_pollfd(instance->hdl, &pfd, POLLIN);
		if (poll(&pfd, nfds, 100) < 0) {
			__ERRORLOG("poll error; aborting midi thread");
			break;
		}
		if (!(mio_revents(instance->hdl, &pfd) & POLLIN))
			continue;

		if (!mio_read(instance->hdl, buf, 1)) {
			__ERRORLOG("read error; aborting midi thread");
			break;
		}

		if (buf[0] & 0x80) {
			status = buf[0];
			count = 0;
			msglen = 2;
			msg.m_type = MidiMessage::UNKNOWN;
			msg.m_nData1 = msg.m_nData2 = 0;
			switch (status & 0xf0) {
			case 0x80:
				msg.m_type = MidiMessage::NOTE_OFF;
				break;
			case 0x90:
				msg.m_type = MidiMessage::NOTE_ON;
				break;
			case 0xa0:
				msg.m_type = MidiMessage::POLYPHONIC_KEY_PRESSURE;
				break;
			case 0xb0:
				msg.m_type = MidiMessage::CONTROL_CHANGE;
				break;
			case 0xc0:
				msg.m_type = MidiMessage::PROGRAM_CHANGE;
				break;
			case 0xd0:
				msg.m_type = MidiMessage::CHANNEL_PRESSURE;
				break;
			case 0xe0:
				msg.m_type = MidiMessage::PITCH_WHEEL;
				break;
			case 0xf0:
				switch (status) {
				case 0xf0:
					msg.m_type = MidiMessage::SYSTEM_EXCLUSIVE;
					sysex_len = 0;
					break;
				case 0xf1:
					msg.m_type = MidiMessage::QUARTER_FRAME;
					msglen = 1;
					break;
				case 0xf2:
					msg.m_type = MidiMessage::SONG_POS;
					break;
				case 0xf3:
					/* song select */
					break;
				case 0xf6:
					/* tune */
					break;
				case 0xf7:
					if (!sysex_len)
						continue;
					for (i = 0; i < sysex_len; i++)
						msg.m_sysexData.push_back(sysex_data[i]);
					instance->handleMidiMessage(msg);
					break;
				case 0xf8:
					/* clock */
					break;
				case 0xf9:
					/* tick */
					break;
				case 0xfa:
					msg.m_type = MidiMessage::START;
					msglen = 0;
					break;
				case 0xfb:
					msg.m_type = MidiMessage::CONTINUE;
					msglen = 0;
					break;
				case 0xfc:
					msg.m_type = MidiMessage::STOP;
					msglen = 0;
					break;
				case 0xfe:
					/* active sense */
					break;
				case 0xff:
					/* reset */
					break;
				}
				break;
			}
			if (msg.m_type == MidiMessage::UNKNOWN) {
				/* _INFOLOG("Unhandled midi message type: " + QString::number(status & 0xff)); */
				continue;
			}
			if (msglen > 0)
				continue;
		}

		/* some bytes left in buffer? */
		if (status == 0)
			continue;

		if (status == 0xf0) {
			if (sysex_len > 255) {
				__ERRORLOG("already 256 bytes in midi sysex buffer!");
				continue;
			}
			sysex_data[sysex_len++] = buf[0];
			continue;
		}

		if (msglen > 0) {
			switch (count) {
			case 0:
				msg.m_nData1 = buf[0];
				break;
			case 1:
				msg.m_nData2 = buf[0];
				break;
			default:
				continue;
			}
			if (++count < msglen)
				continue;
		}

		msg.m_nChannel = (status & 0x0f);

		instance->handleMidiMessage(msg);
	}

	__INFOLOG("MIDI Thread DESTROY");
	pthread_exit(NULL);
	return NULL;
}

SndioMidiDriver::SndioMidiDriver()
		: MidiInput("SndioMidiDriver"), MidiOutput("SndioMidiDriver"), Object( "SndioMidiDriver" )
		, m_bRunning(false)
{
	hdl = NULL;
}

SndioMidiDriver::~SndioMidiDriver()
{
	if (hdl != NULL)
		mio_close(hdl);
	hdl = NULL;
}

void SndioMidiDriver::open()
{
	QString midiDevice = Preferences::get_instance()->m_sMidiPortName;

	INFOLOG("SndioMidiDriver::open");

	if (midiDevice == "" ||
	    midiDevice == "None" ||
	    midiDevice == "default")
		hdl = mio_open(MIO_PORTANY, MIO_IN | MIO_OUT, 0);
	else
		hdl = mio_open(midiDevice.toLocal8Bit(), MIO_IN | MIO_OUT, 0);

	if (!hdl) {
		ERRORLOG("mio_open failed");
		m_bRunning = false;
		return;
	}
	m_bRunning = true;

	pthread_attr_t attr;
	pthread_attr_init(&attr);
	pthread_create(&SndioMidiDriverThread, &attr, SndioMidiDriver_thread, ( void* )this);
}

void SndioMidiDriver::close()
{
	INFOLOG("SndioMidiDriver::close");

	if (m_bRunning) {
		m_bRunning = false;
		pthread_join(SndioMidiDriverThread, NULL);
	}
	if (hdl != NULL)
		mio_close(hdl);
	hdl = NULL;
}

std::vector<QString> SndioMidiDriver::getInputPortList()
{
	std::vector<QString> portList;
	QString name;
	int i;

	/* midithru/* */
	for (i = 0; i < 4; i++) {
		name = "midithru/" + QString::number(i);
		portList.push_back(name);
	}

	/* rmidi/* */
	for (i = 0; i < 8; i++) {
		name = "rmidi/" + QString::number(i);
		QFileInfo di("/dev/rmidi" + QString::number(i));
		if (di.exists())
			portList.push_back(name);
	}

	return portList;
}

std::vector<QString> SndioMidiDriver::getOutputPortList()
{
	std::vector<QString> portList;
	QString name;
	int i;

	/* midithru/* */
	for (i = 0; i < 4; i++) {
		name = "midithru/" + QString::number(i);
		portList.push_back(name);
	}

	/* rmidi/* */
	for (i = 0; i < 8; i++) {
		name = "rmidi/" + QString::number(i);
		QFileInfo di("/dev/rmidi" + QString::number(i));
		if (di.exists())
			portList.push_back(name);
	}

	return portList;
}

void SndioMidiDriver::handleQueueNote( Note* pNote )
{
	uint8_t data[3];
	int key = pNote->get_midi_key();
	int velocity = pNote->get_midi_velocity();
	int channel = pNote->get_instrument()->get_midi_out_channel();

	if (!hdl || channel < 0)
		return;

	data[0] = 0x80 | channel;
	data[1] = key;
	data[2] = velocity;
	mio_write(hdl, data, 3);

	data[0] = 0x90 | channel;
	mio_write(hdl, data, 3);
}

void SndioMidiDriver::handleQueueNoteOff( int channel, int key, int velocity )
{
	uint8_t data[3];
	
	if (!hdl)
		return;

	data[0] = 0x80 | channel;
	data[1] = key;
	data[2] = velocity;
	mio_write(hdl, data, 3);
}

void SndioMidiDriver::handleQueueAllNoteOff()
{
	uint8_t data[3];
	InstrumentList *instList = Hydrogen::get_instance()->getSong()->get_instrument_list();
	Instrument *curInst;
	int channel;
	int key;
	unsigned int numInstruments = instList->size();

	if (!hdl)
		return;

	for (int index = 0; index < numInstruments; ++index) {
		curInst = instList->get(index);
		channel = curInst->get_midi_out_channel();
		if (channel < 0) {
			continue;
		}
		key = curInst->get_midi_out_note();
		data[0] = 0x80 | channel;
		data[1] = key;
		data[2] = 0;
		mio_write(hdl, data, 3);
	}
}

void SndioMidiDriver::handleOutgoingControlChange( int param, int value, int channel )
{
	uint8_t data[3];

	if (!hdl || channel < 0)
		return;

	data[0] = 0xB0 | channel;
	data[1] = param;
	data[2] = value;
}

};

#endif	// H2CORE_HAVE_SNDIO
