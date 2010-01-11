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

#include "SndioAudioDriver.h"

#ifdef SNDIO_SUPPORT

#include <hydrogen/Preferences.h>

#include <pthread.h>

namespace H2Core
{

audioProcessCallback sndioAudioDriver_audioProcessCallback;
bool sndioAudioDriver_running;
pthread_t sndioAudioDriverThread;
int sndio_driver_bufferSize = -1;
SndioAudioDriver *m_pSndioAudioDriverInstance = NULL;

unsigned nNextFrames = 0;

void* sndioAudioDriver_processCaller(void* param)
{
	SndioAudioDriver *sndioAudioDriver = (SndioAudioDriver*)param;

	sleep(1);

	while (sndioAudioDriver_running) {
		sndioAudioDriver_audioProcessCallback(sndio_driver_bufferSize, NULL);
		sndioAudioDriver->write();
	}

	pthread_exit(NULL);
	return NULL;
}

SndioAudioDriver::SndioAudioDriver(audioProcessCallback processCallback)
    : AudioOutput("SndioAudioDriver")
{
	INFOLOG("init SndioAudioDriver");
	audioBuffer = NULL;
	sndioAudioDriver_running = false;
	this->processCallback = processCallback;
	sndioAudioDriver_audioProcessCallback = processCallback;
	m_pSndioAudioDriverInstance = this;
}

SndioAudioDriver::~SndioAudioDriver()
{
	INFOLOG("destroy SndioAudioDriver");
}

int SndioAudioDriver::init(unsigned nBufferSize)
{
	INFOLOG("SndioAudioDriver::init");

	sndio_driver_bufferSize = nBufferSize;

	delete[] audioBuffer;
	audioBuffer = NULL;

	audioBuffer = new short[nBufferSize * 2];

	out_L = new float[nBufferSize];
	out_R = new float[nBufferSize];

	memset(out_L, 0, nBufferSize * sizeof(float));
	memset(out_R, 0, nBufferSize * sizeof(float));

	return 0;
}

int SndioAudioDriver::connect()
{
	INFOLOG("SndioAudioDriver::connect");

	Preferences *preferencesMng = Preferences::get_instance();
	struct sio_par reqpar;
	char audioDevice[32];

	snprintf(audioDevice, 32, preferencesMng->m_sSndioDevice.toAscii());

	if (strncmp(audioDevice, "", 1) == 0 ||
	    strncmp(audioDevice, "default", 8) == 0)
		hdl = sio_open(NULL, SIO_PLAY, 0);
	else
		hdl = sio_open(audioDevice, SIO_PLAY, 0);

	if (hdl == NULL) {
		ERRORLOG("sio_open failed");
		return 1;
	}

	sio_initpar(&par);
	par.bits = 16;
	par.sig = 1;
	par.pchan = 2;
	par.rate = preferencesMng->m_nSampleRate;
	par.round = sndio_driver_bufferSize;
	par.appbufsz = par.round * 2;

	reqpar = par;

	if (!sio_setpar(hdl, &par)) {
		ERRORLOG("sio_setpar failed");
		return 1;
	}
	if (!sio_getpar(hdl, &par)) {
		ERRORLOG("sio_getpar failed");
		return 1;
	}

	if (reqpar.bits != par.bits ||
	    reqpar.sig != par.sig ||
	    reqpar.pchan != par.pchan) {
		ERRORLOG("could not set desired sndio audio parameters");
		return 1;
	}

	INFOLOG(QString("sndio blocksize: %1 frames").arg(par.round));

	if (!sio_start(hdl)) {
		ERRORLOG("sio_start failed");
		return 1;
	}

	sndioAudioDriver_running = true;
	pthread_attr_t attr;
	pthread_attr_init(&attr);

	pthread_create(&sndioAudioDriverThread, &attr, sndioAudioDriver_processCaller,
	    this);

	return 0;
}

void SndioAudioDriver::disconnect()
{
	INFOLOG("SndioAudioDriver::disconnect");

	sndioAudioDriver_running = false;

	pthread_join(sndioAudioDriverThread, NULL);

	if (hdl != NULL) {
		sio_close(hdl);
		hdl = NULL;
	}

	delete [] out_L;
	out_L = NULL;

	delete [] out_R;
	out_R = NULL;

	delete[] audioBuffer;
	audioBuffer = NULL;
}

void SndioAudioDriver::write()
{
	unsigned size = sndio_driver_bufferSize * 2;

	for (unsigned i = 0; i < (unsigned)sndio_driver_bufferSize; ++i) {
		audioBuffer[i * 2] = (short)(out_L[i] * 32768.0);
		audioBuffer[i * 2 + 1] = (short)(out_R[i] * 32768.0);
	}

	unsigned long written = sio_write(hdl, audioBuffer, size * 2);

	if (written != (size * 2) ) {
		ERRORLOG("SndioAudioDriver: Error writing samples to audio device.");
	}
}

unsigned SndioAudioDriver::getBufferSize()
{
	return sndio_driver_bufferSize;
}

unsigned SndioAudioDriver::getSampleRate()
{
	Preferences *preferencesMng = Preferences::get_instance();
	return preferencesMng->m_nSampleRate;
}

float* SndioAudioDriver::getOut_L()
{
	return out_L;
}

float* SndioAudioDriver::getOut_R()
{
	return out_R;
}

void SndioAudioDriver::play()
{
	m_transport.m_status = TransportInfo::ROLLING;
}

void SndioAudioDriver::stop()
{
	m_transport.m_status = TransportInfo::STOPPED;
}

void SndioAudioDriver::locate( unsigned long nFrame )
{
	m_transport.m_nFrames = nFrame;
}

void SndioAudioDriver::updateTransportInfo()
{
	/* not used */
}

void SndioAudioDriver::setBpm(float fBPM)
{
	INFOLOG(QString("[setBpm]: %1").arg(fBPM));
	m_transport.m_nBPM = fBPM;
}


};	/* namespace H2Core */

#endif	/* SNDIO_SUPPORT */
