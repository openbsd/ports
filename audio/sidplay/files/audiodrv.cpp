// --------------------------------------------------------------------------
// ``sndio'' specific audio driver interface.
// --------------------------------------------------------------------------

#include "audiodrv.h"

audioDriver::audioDriver()
{
	hdl = NULL;
}

bool audioDriver::IsThere()
{
	return 1;
}

bool audioDriver::Open(udword inFreq, int inPrecision, int inChannels,
    int inFragments, int inFragBase)
{
	sio_par askpar, retpar;

	hdl = sio_open(SIO_DEVANY, SIO_PLAY, 0);
	if (hdl == NULL)
	{
		errorString = "ERROR: Could not open audio device.";
		return false;
	}

	frequency = inFreq;
	channels = inChannels;
	precision = inPrecision;
	encoding = retpar.sig ? SIDEMU_SIGNED_PCM :  SIDEMU_UNSIGNED_PCM;

	sio_initpar(&askpar);
	if (precision == SIDEMU_8BIT)
	{
		askpar.le = SIO_LE_NATIVE;
		askpar.bits = 16;
		askpar.sig = 1;
	} else {
		askpar.bits = 8;
		askpar.sig = 0;
	}
	askpar.pchan = inChannels == SIDEMU_MONO ? 1 : 2;
	askpar.rate = inFreq;
	askpar.round = 1 << inFragBase;
	askpar.appbufsz = inFragments * askpar.round;

	if (!sio_setpar(hdl, &askpar) || !sio_getpar(hdl, &retpar))
	{
		errorString = "ERROR: Could not set audio parameters.";
		goto bad_close;
	}

	if (retpar.bits != askpar.bits || retpar.sig != askpar.sig ||
	    (retpar.bits > 8 && retpar.le != askpar.le) ||
	    retpar.pchan != askpar.pchan || retpar.rate != askpar.rate)
	{
		errorString = "ERROR: Unsupported audio parameters.";
		goto bad_close;
	}
	blockSize = retpar.round;

	if (!sio_start(hdl))
	{
		errorString = "ERROR: Could not start audio device.";
		goto bad_close;
	}
	return true;

bad_close:
	sio_close(hdl);
	hdl = NULL;
	return false;
}

void audioDriver::Close()
{
	if (hdl != NULL)
	{
		sio_close(hdl);
		hdl = NULL;
	}
}

void audioDriver::Play(ubyte* pBuffer, int bufferSize)
{
	if (hdl != NULL)
		sio_write(hdl, pBuffer, bufferSize);
}

bool audioDriver::Reset()
{
	if (hdl != NULL) {
		sio_stop(hdl);
		sio_start(hdl);
		return true;
	}
	return false;
}
