/*
 * SID emulation, OpenBSD flavor
 *
 *  Written by Marc Espie in 2000, based on SUN version.
 */

extern "C" {
	#include <sys/audioio.h>
	#include <unistd.h>
	#include <sys/ioctl.h>
	#include "VIC.h"
}

#define FRAGSIZE (SAMPLE_FREQ/CALC_FREQ)  // samples in a fragment
#define MAXBUFFERED (2*FRAGSIZE) // allow ourselves a little buffering

void DigitalRenderer::init_sound(void)
{
	ready = false;
 
 	fd = open("/dev/audio", O_WRONLY, 0);
	if (fd == -1) {
		fprintf(stderr, "SID_OpenBSD: unable to open /dev/audio\n");
		return;
	}
	
	struct audio_info info;

	AUDIO_INITINFO(&info);
	info.play.sample_rate = SAMPLE_FREQ;
	info.play.channels = 1;
	info.play.precision = 16;
	info.play.encoding = AUDIO_ENCODING_LINEAR;
	info.hiwat = MAXBUFFERED;
	info.lowat = FRAGSIZE;

	if (ioctl(fd, AUDIO_SETINFO, &info) != 0) {
    		fprintf(stderr,
		    "SID_OpenBSD : unable to select 16 bits/%d khz linear encoding.\n",
		    SAMPLE_FREQ);
		close(fd);
		return;
	} else {
		fprintf(stderr,
		    "SID_OpenBSD : selecting 16 bits/%d khz linear encoding.\n",
		    SAMPLE_FREQ);
	}

	sound_calc_buf = new int16[FRAGSIZE];
	ready = true;
}


DigitalRenderer::~DigitalRenderer()
{
	if (ready) {
		delete [] sound_calc_buf;
	      	ioctl(fd, AUDIO_DRAIN);
	      	close(fd);
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
 	while (divisor >= 0)
    		divisor -= TOTAL_RASTERS*SCREEN_FREQ, to_output++;
	if (!ready)
		return;

 	while (to_output >= FRAGSIZE) {
    		calc_buffer(sound_calc_buf, FRAGSIZE*2);
		// Ignore the return code, what are we going to do if
		// the write fails anyway ?
    		(void)write (fd,sound_calc_buf, FRAGSIZE*2);
		to_output -= FRAGSIZE;
      }	
}
