/*	$OpenBSD: audio_sun.c,v 1.4 2008/03/31 01:05:54 jakemsr Exp $	*/

/*
 * Copyright (c) 2002 CubeSoft Communications, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistribution of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Neither the name of CubeSoft Communications, nor the names of its
 *    contributors may be used to endorse or promote products derived from
 *    this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
 * USE OF THIS SOFTWARE EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include "config.h"

#include <sys/types.h>
#include <sys/ioctl.h>
#include <sys/audioio.h>
#include <string.h>

static void sun_panic(int fd, char *s)
{
    perror(s);
    close(fd);
    esd_audio_fd = -1;
}

#define ARCH_esd_audio_devices
const char *esd_audio_devices()
{
    return "/dev/audio";
}


#define ARCH_esd_audio_open
int esd_audio_open()
{
    const char *device;
    int afd = -1;
    int fmt = 0, channels = 0, bits = 0;
    int mode = O_WRONLY;
    audio_info_t info;

    AUDIO_INITINFO(&info);

    /* set the appropriate mode */
    if((esd_audio_format & ESD_MASK_FUNC) == ESD_RECORD) {
        mode = O_RDWR;
	info.mode = AUMODE_PLAY | AUMODE_PLAY_ALL | AUMODE_RECORD;
    } else {
	info.mode = AUMODE_PLAY | AUMODE_PLAY_ALL;
    }

    /* open the sound device */
    device = esd_audio_device ? esd_audio_device : "/dev/audio";
    if ((afd = open(device, mode, 0)) == -1) {
        perror(device);
        return( -2 );
    }

    /* set the requested mode */
    if(ioctl(afd, AUDIO_SETINFO, &info) < 0) {
	sun_panic(afd, "AUDIO_SETINFO");
	return(-1);
    }

    /* set full-duplex mode if we are recording */
    if ( (esd_audio_format & ESD_MASK_FUNC) == ESD_RECORD ) {
	if (ioctl(afd, AUDIO_SETFD, 1) == -1) {
	    sun_panic(afd, "AUDIO_SETFD");
	    return(-1);
	}
    }

    /* pick a supported encoding */
    if ((esd_audio_format & ESD_MASK_BITS) == ESD_BITS16) {
        bits = 16;
        fmt = (BYTE_ORDER == 4321) ?
          AUDIO_ENCODING_SLINEAR_BE : AUDIO_ENCODING_SLINEAR_LE;
    } else {
        bits = 8;
        fmt = (BYTE_ORDER == 4321) ?
          AUDIO_ENCODING_ULINEAR_BE : AUDIO_ENCODING_ULINEAR_LE;
    }
    info.play.encoding = fmt;
    info.play.precision = bits;
    if(ioctl(afd, AUDIO_SETINFO, &info) == -1) {
	fprintf(stderr, "Unsupported encoding: %i-bit (0x%x)\n",
	    bits, fmt);
	sun_panic(afd, "SETINFO");
	return(-1);
    }

    /* number of channels */
    channels = (((esd_audio_format & ESD_MASK_CHAN) == ESD_STEREO)
        ? /* stereo */	2
	: /* mono */	1);

    info.play.channels = channels;
    if((esd_audio_format & ESD_MASK_FUNC) == ESD_RECORD) {
	info.record.channels = channels;
    }
    if(ioctl(afd, AUDIO_SETINFO, &info) == -1) {
	fprintf(stderr, "Unsupported channel count: %d\n",
	    channels);
	sun_panic(afd, "SETINFO");
	return(-1);
    }

    /* blocksize, sync to internal esd buffer size */
    info.blocksize = ESD_BUF_SIZE;
    info.hiwat = 4;
    if(ioctl(afd, AUDIO_SETINFO, &info) < 0) {
	fprintf(stderr, "Unsupported blocksize: %d\n",
	    info.blocksize);
	sun_panic(afd, "SETINFO");
	return(-1);
    }

    /* finally, set the sample rate */
    info.play.sample_rate = esd_audio_rate;
    if(ioctl(afd, AUDIO_SETINFO, &info) < 0 || 
	fabs(info.play.sample_rate - esd_audio_rate) > esd_audio_rate * 0.05) {
	fprintf(stderr, "Unsupported rate: %i Hz\n", esd_audio_rate);
	sun_panic(afd, "SETINFO");
	return(-1);
    }

    return(esd_audio_fd = afd);
}

#define ARCH_esd_audio_pause
void esd_audio_pause()
{
    audio_info_t info;
    int afd = esd_audio_fd;

    AUDIO_INITINFO(&info);    

    if(ioctl(afd, AUDIO_GETINFO, &info) < 0) {
	sun_panic(afd, "AUDIO_GETINFO");
	return;
    }

    if((info.mode & AUMODE_PLAY) == AUMODE_PLAY)
	info.play.pause = !info.play.pause;
    if((info.mode & AUMODE_RECORD) == AUMODE_RECORD)
	info.record.pause = !info.record.pause;

    return;
}
