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

/* Based on SID_openbsd by Marc Espie. */

extern "C" {
	#include "VIC.h"
}

#define FRAGSIZE (SAMPLE_FREQ / CALC_FREQ)	/* samples in a fragment */

void DigitalRenderer::init_sound(void)
{
	struct sio_par par;

	ready = false;
 
	hdl = sio_open(NULL, SIO_PLAY, 0);
	if (hdl == NULL) {
		fprintf(stderr, "SID_sndio: unable to open device\n");
		return;
	}
	
	sio_initpar(&par);
	par.rate = SAMPLE_FREQ;
	par.pchan = 1;
	par.bits = 16;
	par.sig = 1;
	par.round = FRAGSIZE;
	par.appbufsz = FRAGSIZE * 2;

	if (!sio_setpar(hdl, &par) || !sio_getpar(hdl, &par)) {
    		fprintf(stderr, "SID_sndio: failure setting parameters.\n");
		sio_close(hdl);
		return;
	}
	if (par.rate != SAMPLE_FREQ || par.bits != 16 || par.sig != 1 ||
	    par.pchan != 1) {
    		fprintf(stderr, "SID_sndio: could not set desired parameters.\n");
		sio_close(hdl);
		return;
	} else {
		fprintf(stderr,
		    "SID_sndio: selected 16 bits/%d hz linear encoding.\n",
		    SAMPLE_FREQ);
	}

	if (!sio_start(hdl)) {
    		fprintf(stderr, "SID_sndio: could not start sndio.\n");
		sio_close(hdl);
		return;
	}

	sound_calc_buf = new int16[FRAGSIZE];
	ready = true;
}

DigitalRenderer::~DigitalRenderer()
{
	if (ready) {
		delete [] sound_calc_buf;
		if (hdl != NULL)
		      	sio_close(hdl);
		hdl = NULL;
	}
}

void DigitalRenderer::Pause(void)
{
}

void DigitalRenderer::Resume(void)
{
}

void DigitalRenderer::EmulateLine(void)
{
	static int divisor = 0;
	static int to_output = 0;

	sample_buf[sample_in_ptr] = volume;
	sample_in_ptr = (sample_in_ptr + 1) % SAMPLE_BUF_SIZE;

	divisor += SAMPLE_FREQ;
 	while (divisor >= 0) {
    		divisor -= TOTAL_RASTERS * SCREEN_FREQ;
		to_output++;
	}
	if (!ready)
		return;

 	while (to_output >= FRAGSIZE) {
    		calc_buffer(sound_calc_buf, FRAGSIZE * 2);
    		sio_write(hdl, sound_calc_buf, FRAGSIZE * 2);
		to_output -= FRAGSIZE;
      }	
}
