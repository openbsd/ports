/*
 * Copyright (c) 2008 Jacob Meuser <jakemsr@sdf.lonestar.org>
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


#include "SDL_config.h"

/* Allow access to a raw mixing buffer */

#ifdef HAVE_SIGNAL_H
#include <signal.h>
#endif
#include <unistd.h>

#include "SDL_timer.h"
#include "SDL_audio.h"
#include "../SDL_audiomem.h"
#include "../SDL_audio_c.h"
#include "../SDL_audiodev_c.h"
#include "SDL_libsndioaudio.h"

/* The tag name used by libsndio audio */
#define LIBSNDIO_DRIVER_NAME         "libsndio"

/* Audio driver functions */
static int LIBSNDIO_OpenAudio(_THIS, SDL_AudioSpec *spec);
static void LIBSNDIO_WaitAudio(_THIS);
static void LIBSNDIO_PlayAudio(_THIS);
static Uint8 *LIBSNDIO_GetAudioBuf(_THIS);
static void LIBSNDIO_CloseAudio(_THIS);

/* Audio driver bootstrap functions */

static int Audio_Available(void)
{
	struct sio_hdl *this_hdl;
	int available = 0;

	if ( (this_hdl = sio_open(NULL, SIO_PLAY, 0)) != NULL ) {
		sio_close(this_hdl);
		available = 1;
	}

	return available;
}

static void Audio_DeleteDevice(SDL_AudioDevice *device)
{
	SDL_free(device->hidden);
	SDL_free(device);
}

static SDL_AudioDevice *Audio_CreateDevice(int devindex)
{
	SDL_AudioDevice *this;

	/* Initialize all variables that we clean on shutdown */
	this = (SDL_AudioDevice *)SDL_malloc(sizeof(SDL_AudioDevice));
	if ( this ) {
		SDL_memset(this, 0, (sizeof *this));
		this->hidden = (struct SDL_PrivateAudioData *)
				SDL_malloc((sizeof *this->hidden));
	}
	if ( (this == NULL) || (this->hidden == NULL) ) {
		SDL_OutOfMemory();
		if ( this ) {
			SDL_free(this);
		}
		return(0);
	}
	SDL_memset(this->hidden, 0, (sizeof *this->hidden));

	/* Set the function pointers */
	this->OpenAudio = LIBSNDIO_OpenAudio;
	this->WaitAudio = LIBSNDIO_WaitAudio;
	this->PlayAudio = LIBSNDIO_PlayAudio;
	this->GetAudioBuf = LIBSNDIO_GetAudioBuf;
	this->CloseAudio = LIBSNDIO_CloseAudio;

	this->free = Audio_DeleteDevice;

	hdl = NULL;

	return this;
}

AudioBootStrap LIBSNDIO_bootstrap = {
	LIBSNDIO_DRIVER_NAME, "libsndio",
	Audio_Available, Audio_CreateDevice
};



/* This function waits until it is possible to write a full sound buffer */
static void LIBSNDIO_WaitAudio(_THIS)
{
	Sint32 ticks;

	/* Check to see if the thread-parent process is still alive */
	{ static int cnt = 0;
		/* Note that this only works with thread implementations 
		   that use a different process id for each thread.
		*/
		if (parent && (((++cnt)%10) == 0)) { /* Check every 10 loops */
			if ( kill(parent, 0) < 0 ) {
				this->enabled = 0;
			}
		}
	}

	/* Use timer for general audio synchronization */
	ticks = ((Sint32)(next_frame - SDL_GetTicks()))-FUDGE_TICKS;
	if ( ticks > 0 ) {
		SDL_Delay(ticks);
	}
}

static void LIBSNDIO_PlayAudio(_THIS)
{
	int written;

	/* Write the audio data */
	written = sio_write(hdl, mixbuf, mixlen);
	
	/* If timer synchronization is enabled, set the next write frame */
	if ( frame_ticks ) {
		next_frame += frame_ticks;
	}

	/* If we couldn't write, assume fatal error for now */
	if ( written == 0 ) {
		this->enabled = 0;
	}
#ifdef DEBUG_AUDIO
	fprintf(stderr, "Wrote %d bytes of audio data\n", written);
#endif
}

static Uint8 *LIBSNDIO_GetAudioBuf(_THIS)
{
	return(mixbuf);
}

static void LIBSNDIO_CloseAudio(_THIS)
{
	if ( mixbuf != NULL ) {
		SDL_FreeAudioMem(mixbuf);
		mixbuf = NULL;
	}
	if ( hdl != NULL ) {
		sio_close(hdl);
		hdl = NULL;
	}
}

static int LIBSNDIO_OpenAudio(_THIS, SDL_AudioSpec *spec)
{
	struct sio_par par;

	/* Reset the timer synchronization flag */
	frame_ticks = 0.0;
	next_frame = 0;

	mixbuf = NULL;

	if ((hdl = sio_open(NULL, SIO_PLAY, 0)) == NULL) {
		SDL_SetError("sio_open() failed");
		return(-1);
	}

	sio_initpar(&par);

	switch (spec->format) {
	case AUDIO_S16LSB:
		par.bits = 16;
		par.sig = 1;
		par.le = 1;
		break;
	case AUDIO_U8:
		par.bits = 8;
		par.sig = 0;
		break;
	default:
		SDL_SetError("LIBSNDIO unknown format");
		return(-1);
	}

	par.rate = spec->freq;
	par.pchan = spec->channels;

	/* Calculate the final parameters for this audio specification */
	SDL_CalculateAudioSpec(spec);

	/* bufsz is in frames, size is in bytes.  they both are counts
	   of the total buffer size (total latency desired) */
	par.appbufsz = spec->size / par.pchan / (par.bits / 8);

	if (sio_setpar(hdl, &par) == 0) {
		SDL_SetError("sio_setpar() failed");
		return(-1);
	}

	if (sio_getpar(hdl, &par) == 0) {
		SDL_SetError("sio_getpar() failed");
		return(-1);
	}

	/* if wanted rate not found, find a multiple/factor */
	if (par.rate != spec->freq) {
		if ((par.rate > spec->freq && par.rate % spec->freq != 0) ||
		     (par.rate < spec->freq && spec->freq % par.rate != 0)) {
			if ((spec->freq < 44100 && 44100 % spec->freq == 0) ||
			     (spec->freq > 44100 && spec->freq % 44100 == 0)) {
				sio_initpar(&par);
				par.rate = 44100;
				if (sio_setpar(hdl, &par) == 0) {
					SDL_SetError("sio_setpar() failed");
					return(-1);
				}
			}
		}
	}

	if (sio_getpar(hdl, &par) == 0) {
		SDL_SetError("sio_getpar() failed");
		return(-1);
	}

	if (par.bits == 16 && par.sig == 1 && par.le == 1)
		spec->format = AUDIO_S16LSB;
	else if (par.bits == 8 && par.sig == 0)
		spec->format = AUDIO_U8;
	else {
		SDL_SetError("LIBSNDIO couldn't configure a suitable format");
		return(-1);
	}

	spec->freq = par.rate;
	spec->channels = par.pchan;

	/* tell SDL we want to write in par.round sized blocks */
	/* this is problematic for some applications, don't do it now.
	   maybe in SDL-1.3.
	spec->size = par.bufsz * par.pchan * par.bps;
	frame_ticks = (float)par.bufsz / par.rate;
	*/

	/* Allocate mixing buffer */
	mixlen = spec->size;
	mixbuf = (Uint8 *)SDL_AllocAudioMem(mixlen);
	if ( mixbuf == NULL ) {
		return(-1);
	}
	SDL_memset(mixbuf, spec->silence, spec->size);

	/* Get the parent process id (we're the parent of the audio thread) */
	parent = getpid();

	if ( sio_start(hdl) == 0 ) {
		SDL_SetError("sio_start() failed");
		return(-1);
	}

	/* We're ready to rock and roll. :-) */
	return(0);
}
