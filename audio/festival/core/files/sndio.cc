/*
 * Copyright (c) 2010 Jacob Meuser <jakemsr@sdf.lonestar.org>
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

/* Based on voxware.cc which came with the following copyright notice. */

/*************************************************************************/
/*                                                                       */
/*                Centre for Speech Technology Research                  */
/*                     University of Edinburgh, UK                       */
/*                      Copyright (c) 1997,1998                          */
/*                        All Rights Reserved.                           */
/*                                                                       */
/*  Permission is hereby granted, free of charge, to use and distribute  */
/*  this software and its documentation without restriction, including   */
/*  without limitation the rights to use, copy, modify, merge, publish,  */
/*  distribute, sublicense, and/or sell copies of this work, and to      */
/*  permit persons to whom this work is furnished to do so, subject to   */
/*  the following conditions:                                            */
/*   1. The code must retain the above copyright notice, this list of    */
/*      conditions and the following disclaimer.                         */
/*   2. Any modifications must be clearly marked as such.                */
/*   3. Original authors' names are not deleted.                         */
/*   4. The authors' names are not used to endorse or promote products   */
/*      derived from this software without specific prior written        */
/*      permission.                                                      */
/*                                                                       */
/*  THE UNIVERSITY OF EDINBURGH AND THE CONTRIBUTORS TO THIS WORK        */
/*  DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING      */
/*  ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT   */
/*  SHALL THE UNIVERSITY OF EDINBURGH NOR THE CONTRIBUTORS BE LIABLE     */
/*  FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES    */
/*  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN   */
/*  AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,          */
/*  ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF       */
/*  THIS SOFTWARE.                                                       */
/*                                                                       */
/*************************************************************************/
/*                Author :  Alan W Black                                 */
/*                Date   :  July 1997                                    */
/*-----------------------------------------------------------------------*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#include <sys/stat.h>
#include "EST_cutils.h"
#include "EST_walloc.h"
#include "EST_Wave.h"
#include "EST_wave_aux.h"
#include "EST_Option.h"
#include "audioP.h"
#include "EST_io_aux.h"
#include "EST_error.h"

#ifdef SUPPORT_SNDIO
#include <sndio.h>
int sndio_supported = TRUE;
static char *aud_sys_name = "sndio";
static int stereo_only = 0;


// Code to block signals while sound is playing.
// Needed inside Java on (at least some) linux systems
// as scheduling interrupts seem to break the writes. 

#ifdef THREAD_SAFETY
#include <signal.h>
#include <pthread.h>

#define THREAD_DECS() \
    sigset_t  oldmask \

#define THREAD_PROTECT() do { \
    sigset_t  newmask; \
    \
    sigfillset(&newmask); \
    \
    pthread_sigmask(SIG_BLOCK, &newmask, &oldmask); \
    } while(0)

#define THREAD_UNPROTECT() do { \
     pthread_sigmask(SIG_SETMASK, &oldmask, NULL); \
     } while (0)

#else
#define  THREAD_DECS() //empty
#define  THREAD_PROTECT() //empty
#define  THREAD_UNPROTECT() //empty
#endif


#define AUDIOBUFFSIZE 256
// #define AUDIOBUFFSIZE 20480

int
play_sndio_wave(EST_Wave &inwave, EST_Option &al)
{
	struct sio_hdl *hdl;
	struct sio_par par;
	int sample_rate;
	short *waveform;
	short *waveform2 = NULL;
	int num_samples;
	int i, r, n;
	char *audiodevice = NULL;

	if (al.present("-audiodevice"))
		audiodevice = al.val("-audiodevice");

	if ((hdl = sio_open(audiodevice, SIO_PLAY, 0)) == NULL) {
		cerr << aud_sys_name << ": error opening device" << endl;
		return -1;
	}

	waveform = inwave.values().memory();
	num_samples = inwave.num_samples();
	sample_rate = inwave.sample_rate();

	sio_initpar(&par);

	par.rate = sample_rate;
	par.pchan = 1;
	par.bits = 16;
	par.sig = 1;
	par.le = SIO_LE_NATIVE;

	if (!sio_setpar(hdl, &par) || !sio_getpar(hdl, &par)) {
		cerr << aud_sys_name << ": error configuring parameters" << endl;
		return -1;
	}

	if ((par.pchan != 1 && par.pchan != 2) ||
	    !((par.bits == 16 && par.sig == 1) ||
	    (par.bits == 8 && par.sig == 0)) ||
	    par.rate != sample_rate) {
		cerr << aud_sys_name << ": could not set appropriate parameters" << endl;
		return -1;
	}

	if (!sio_start(hdl)) {
		cerr << aud_sys_name << ": could not start sudio" << endl;
		return -1;
	}

	if (par.pchan == 2)
		stereo_only = 1;

	if (stereo_only) {
		waveform2 = walloc(short, num_samples * 2);
		for (i = 0; i < num_samples; i++) {
			waveform2[i * 2] = inwave.a(i);
			waveform2[(i * 2) + 1] = inwave.a(i);
		}
		waveform = waveform2;
		num_samples *= 2;
	}

	THREAD_DECS();
	THREAD_PROTECT();

	if (par.bits == 8) {
		// Its actually 8bit unsigned so convert the buffer;
		unsigned char *uchars = walloc(unsigned char,num_samples);
		for (i=0; i < num_samples; i++)
			uchars[i] = waveform[i] / 256 + 128;
		for (i=0; i < num_samples; i += r) {
			if (num_samples > i + AUDIOBUFFSIZE)
				n = AUDIOBUFFSIZE;
			else
				n = num_samples - i;
			r = sio_write(hdl, &uchars[i], n);
			if (r == 0 && sio_eof(hdl)) {
				THREAD_UNPROTECT();
				cerr << aud_sys_name << ": failed to write to buffer" <<
				    sample_rate << endl;
				sio_close(hdl);
				return -1;
			}
		}
		wfree(uchars);
	} else {
		// 16-bit
		int nbuf, c;
		short *buf;

		nbuf = par.round * par.bps * par.pchan;

		buf = new short[nbuf];

		for (i = 0; i < num_samples; i += r / 2) {
			if (num_samples > i+nbuf)
				n = nbuf;
			else
				n = num_samples-i;

			for (c = 0; c < n; c++)
				buf[c] = waveform[c + i];

			for(; c < nbuf; c++)
				buf[c] = waveform[n - 1];

			r = sio_write(hdl, buf, nbuf * 2);
			if (r == 0 && sio_eof(hdl)) {
				THREAD_UNPROTECT();
				EST_warning("%s: failed to write to buffer (sr=%d)",
				    aud_sys_name, sample_rate );
				sio_close(hdl);
				return -1;
			}

		}
		delete [] buf;
	}

	sio_close(hdl);
	if (waveform2)
		wfree(waveform2);

	THREAD_UNPROTECT();
	return 1;
}

int
record_sndio_wave(EST_Wave &inwave, EST_Option &al)
{
	struct sio_hdl *hdl;
	struct sio_par par;
	int sample_rate = 16000;  // egcs needs the initialized for some reason
	short *waveform;
	short *waveform2 = NULL;
	int num_samples;
	int i,r,n;
	char *audiodevice = NULL;

	if (al.present("-audiodevice"))
		audiodevice = al.val("-audiodevice");

	sample_rate = al.ival("-sample_rate");

	if ((hdl = sio_open(audiodevice, SIO_REC, 0)) == NULL) {
		cerr << aud_sys_name << ": error opening device" << endl;
		return -1;
	}

	sio_initpar(&par);

	par.rate = sample_rate;
	par.rchan = 1;
	par.bits = 16;
	par.sig = 1;
	par.le = SIO_LE_NATIVE;

	if (!sio_setpar(hdl, &par) || !sio_getpar(hdl, &par)) {
		cerr << aud_sys_name << ": error configuring parameters" << endl;
		return -1;
	}

	if ((par.rchan != 1 && par.rchan != 2) ||
	    !((par.bits == 16 && par.sig == 1) ||
	    (par.bits == 8 && par.sig == 0)) ||
	    par.rate != sample_rate) {
		cerr << aud_sys_name << ": could not set appropriate parameters" << endl;
		return -1;
	}

	if (!sio_start(hdl)) {
		cerr << aud_sys_name << ": could not start sudio" << endl;
		return -1;
	}

	if (par.rchan == 2)
		stereo_only = 1;

	inwave.resize((int)(sample_rate * al.fval("-time")));
	inwave.set_sample_rate(sample_rate);
	num_samples = inwave.num_samples();
	waveform = inwave.values().memory();

	if (par.bits == 16) {
		// We assume that the device returns audio in native byte order
		// by default

		if (stereo_only) {
			waveform2 = walloc(short, num_samples * 2);
			num_samples *= 2;
		} else
			waveform2 = waveform;

		for (i = 0; i < num_samples; i+= r) {
			if (num_samples > i+AUDIOBUFFSIZE)
				n = AUDIOBUFFSIZE;
			else
				n = num_samples-i;
			r = sio_read(hdl, &waveform2[i], n * 2);
			r /= 2;
			if (r == 0 && sio_eof(hdl)) {
				cerr << aud_sys_name << ": failed to read from audio device"
				   << endl;
				sio_close(hdl);
				return -1;
			}
		}
	} else {
		unsigned char *u8wave = walloc(unsigned char, num_samples);

		for (i = 0; i < num_samples; i += r) {
			if (num_samples > i+AUDIOBUFFSIZE)
				n = AUDIOBUFFSIZE;
			else
				n = num_samples - i;
			r = sio_read(hdl, &u8wave[i], n);
			if (r == 0 && sio_eof(hdl)) {
				cerr << aud_sys_name << ": failed to read from audio device"
				    << endl;
				sio_close(hdl);
				wfree(u8wave);
				return -1;
			}

		}
		uchar_to_short(u8wave, waveform, num_samples);
		wfree(u8wave);
	}

	if (stereo_only) {
		for (i = 0; i < num_samples; i += 2)
			waveform[i / 2] = waveform2[i];
		wfree(waveform2);
	}

	sio_close(hdl);
	return 0;
}

#else

int sndio_supported = FALSE;

int
play_sndio_wave(EST_Wave &inwave, EST_Option &al)
{
	(void)inwave;
	(void)al;
	cerr << "Audio: sndio not compiled in this version" << endl;
	return -1;
}

int
record_sndio_wave(EST_Wave &inwave, EST_Option &al)
{
	(void)inwave;
	(void)al;
	cerr << "Audio: sndio not compiled in this version" << endl;
	return -1;
}

#endif
