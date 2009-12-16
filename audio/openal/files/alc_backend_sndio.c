/* -*- mode: C; tab-width:8; c-basic-offset:8 -*-
 * vi:set ts=8:
 *
 * Sndio backend for OpenAL
 *
 */
#include "al_siteconfig.h"

#include <AL/al.h>
#include <AL/alext.h>
#include <fcntl.h>
#include <sndio.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <sys/types.h>
#include <unistd.h>

#include "al_main.h"
#include "al_debug.h"

#include "backends/alc_backend.h"

void *
alcBackendOpenNative_ (ALC_OpenMode mode)
{
	return mode == ALC_OPEN_INPUT_ ?
	    sio_open(NULL, SIO_REC, 0) : sio_open(NULL, SIO_PLAY, 0);
}

ALboolean
alcBackendSetAttributesNative_ (ALC_OpenMode mode, void *handle,
                                ALuint *bufsiz, ALenum *fmt, ALuint *speed)
{
	struct sio_par par;
	unsigned chan;

	sio_initpar(&par);
	par.bits = _alGetBitsFromFormat(*fmt);
	par.sig = par.bits == 8 ? 0 : 1;
	par.le = SIO_LE_NATIVE;
	chan = _alGetChannelsFromFormat(*fmt);
	if (mode == ALC_OPEN_INPUT_)
		par.rchan = chan;
	else
		par.pchan = chan;
	par.rate = *speed;

	par.appbufsz = *bufsiz / SIO_BPS(par.bits) / chan;

	if (!sio_setpar(handle, &par) || !sio_getpar(handle, &par) ||
	    !sio_start(handle)) {
		sio_close(handle);
		return AL_FALSE;
	}

	if (!(par.bits == 16 && par.sig) && !(par.bits == 8 && !par.sig)) {
		sio_close(handle);
		return AL_FALSE;
	}
	chan = mode == ALC_OPEN_INPUT_ ? par.rchan : par.pchan;
	switch (chan) {
	case 1:
		*fmt = par.bits == 16 ? AL_FORMAT_MONO16 : AL_FORMAT_MONO8;
		break;
	case 2:
		*fmt = par.bits == 16 ? AL_FORMAT_STEREO16 : AL_FORMAT_STEREO8;
		break;
	case 4:
		*fmt = par.bits == 16 ? AL_FORMAT_QUAD16_LOKI :
		    AL_FORMAT_QUAD8_LOKI;
		break;
	default:
		sio_close(handle);
		return AL_FALSE;
	}

	*bufsiz = par.appbufsz * par.bps * chan;
	*speed = par.rate;

	return AL_TRUE;
}

void
native_blitbuffer (void *handle, void *dataptr, int bytes_to_write)
{
	sio_write(handle, dataptr, bytes_to_write);
}

void
release_native (void *handle)
{
	sio_close(handle);
}

void
pause_nativedevice (void *handle)
{
	sio_stop(handle);
}

void
resume_nativedevice (void *handle)
{
	sio_start(handle);
}

ALsizei
capture_nativedevice (void *handle, void *capture_buffer, int bufsiz)
{
	return sio_read(handle, capture_buffer, bufsiz);
}

ALfloat
get_nativechannel (UNUSED(void *handle), UNUSED(ALuint channel))
{
	return 0.0;
}

int
set_nativechannel (UNUSED(void *handle), UNUSED(ALuint channel),
                   UNUSED(ALfloat volume))
{
	return 0;
}
