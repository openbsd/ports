/*
 * Copyright (c) 2024 George Koehler <gkoehler@openbsd.org>
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

/*
	Sound GLUe for SNdIO, https://man.openbsd.org/sio_open.3
*/

LOCALVAR struct sio_hdl *audio_hdl;
LOCALVAR int audio_samples_pending;

LOCALPROC MySound_Moved(void *arg, int delta)
{
	audio_samples_pending -= delta;
}

LOCALPROC MySound_Start(void)
{
	if (audio_hdl) {
		MySound_Start0();
		audio_samples_pending = 0;
		sio_start(audio_hdl);
	}
}

LOCALPROC MySound_Stop(void)
{
	if (audio_hdl) {
		sio_flush(audio_hdl);
	}
}

LOCALFUNC blnr MySound_Init(void)
{
	struct sio_par par;

	audio_hdl = sio_open(SIO_DEVANY, SIO_PLAY, 0 /* blocking */);
	if (audio_hdl == NULL) {
		fprintf(stderr, "Cannot open sndio.\n");
		return trueblnr;
	}

	sio_initpar(&par);
	par.bits = 1 << kLn2SoundSampSz;
	par.sig = 0; /* unsigned samples */
	par.le = SIO_LE_NATIVE; /* byte order */
	par.pchan = 1;
	par.rate = SOUND_SAMPLERATE;
	par.round = kOneBuffLen;
	if (!sio_setpar(audio_hdl, &par) ||
		!sio_getpar(audio_hdl, &par) ||
		par.bits != 1 << kLn2SoundSampSz || par.sig != 0 ||
		par.le != SIO_LE_NATIVE || par.pchan != 1 ||
		par.rate < SOUND_SAMPLERATE * 995 / 1000 ||
		par.rate > SOUND_SAMPLERATE * 1005 / 1000)
	{
		fprintf(stderr, "Cannot set sndio parameters.\n");
		goto init_error;
	}

	sio_onmove(audio_hdl, MySound_Moved, NULL);
	return trueblnr;

init_error:
	sio_close(audio_hdl);
	audio_hdl = NULL;
	return trueblnr;
}

LOCALPROC MySound_UnInit(void)
{
	if (audio_hdl) {
		sio_close(audio_hdl);
		audio_hdl = NULL;
	}
}

GLOBALOSGLUPROC MySound_EndWrite(ui4r actL)
{
	tpSoundSamp PlayPtr;
	ui4b TotPendBuffs;

	if (!MySound_EndWrite0(actL) || !audio_hdl) {
		return;
	}

	/* sio_write will call MySound_Moved. */
	audio_samples_pending += kOneBuffLen;

	/*
		Play one buffer (of kOneBuffSz bytes).
		Don't leave part of the buffer for later.
	*/
	PlayPtr = TheSoundBuffer + (ThePlayOffset & kAllBuffMask);
	if (sio_write(audio_hdl, PlayPtr, kOneBuffSz) != kOneBuffSz) {
		fprintf(stderr, "Error from sndio playing audio!\n");
		sio_close(audio_hdl);
		audio_hdl = NULL;
	}
	ThePlayOffset += kOneBuffLen;

	TotPendBuffs = audio_samples_pending >> kLnOneBuffLen;
	if (TotPendBuffs < MinFilledSoundBuffs) {
		MinFilledSoundBuffs = TotPendBuffs;
	}
}

LOCALPROC MySound_SecondNotify(void)
{
	if (audio_hdl) {
		MySound_SecondNotify0();
	}
}
