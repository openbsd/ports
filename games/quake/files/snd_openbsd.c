/*
Copyright (C) 1996-1997 Id Software, Inc.

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  

See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/
#include "quakedef.h"

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#ifdef HAVE_SYS_IOCTL_H
# include <sys/ioctl.h>
#endif
#ifdef HAVE_SYS_MMAN_H
# include <sys/mman.h>
#endif
# include <sys/audioio.h>

static int audio_fd;
static int snd_inited;

static int tryrates[] = { 11025, 22051, 44100, 8000 };

qboolean SNDDMA_Init(void)
{

	int rc;
    int fmt;
	int tmp;
    int i;
    char *s;
	audio_info_t info;
	int caps;

	snd_inited = 0;

// open /dev/dsp, confirm capability to mmap, and get size of dma buffer

	// XXX Must open audio Read-Write for now for dma to work !!!
    audio_fd = open("/dev/audio", O_RDWR);
    if (audio_fd < 0)
	{
		perror("/dev/audio");
        Con_Printf("Could not open /dev/audio\n");
		return 0;
	}


	if (ioctl(audio_fd, AUDIO_GETPROPS, &caps)==-1)
	{
		perror("/dev/audio");
        Con_Printf("Sound driver does not understand GETPROPS\n");
		close(audio_fd);
		return 0;
	}

	if (!(caps & AUDIO_PROP_MMAP))
	{
		Con_Printf("Sorry but your soundcard doesn't support mmap\n");
		close(audio_fd);
		return 0;
	}

	shm = &sn;
    shm->splitbuffer = 0;

// set sample bits & speed

    shm->samplebits = 16;
    shm->speed = 11025;
    s = getenv("QUAKE_SOUND_CHANNELS");
    if (s) shm->channels = atoi(s);
	else if ((i = COM_CheckParm("-sndmono")) != 0)
		shm->channels = 1;
	else if ((i = COM_CheckParm("-sndstereo")) != 0)
		shm->channels = 2;
    else shm->channels = 2;


    AUDIO_INITINFO(&info);
    info.play.precision = shm->samplebits;
    info.play.sample_rate = 11025;
    info.play.encoding = AUDIO_ENCODING_SLINEAR_LE;
    info.play.channels = shm->channels;
    if (ioctl(audio_fd, AUDIO_SETINFO, &info) == -1) {
    	Con_Printf("Bad encoding size\n");
	close(audio_fd);
	return 0;
    }
    ioctl(audio_fd, AUDIO_GETINFO, &info);
    shm->speed = info.play.sample_rate;

	shm->samples = info.play.buffer_size / (shm->samplebits/8);
	shm->submission_chunk = 1;

// memory map the dma buffer

// XXX This is absurd but dma does not work if not mmapped read/write.
	shm->buffer = (unsigned char *) mmap(NULL, info.play.buffer_size,
	PROT_READ|PROT_WRITE, MAP_FILE|MAP_SHARED, audio_fd, 0);
		
//	if (!shm->buffer || shm->buffer == (unsigned char *)-1)
	if (shm->buffer == MAP_FAILED)
	{
		perror("/dev/audio");
		Con_Printf("Could not mmap /dev/audio\n");
		close(audio_fd);
		return 0;
	}

	shm->samplepos = 0;

	snd_inited = 1;
	return 1;

}

int SNDDMA_GetDMAPos(void)
{

	audio_offset_t count;

	if (!snd_inited) return 0;

	if (ioctl(audio_fd, AUDIO_GETOOFFS, &count)==-1)
	{
		perror("/dev/audio");
		Con_Printf("Uh, sound dead.\n");
		close(audio_fd);
		snd_inited = 0;
		return 0;
	}
//	shm->samplepos = (count.bytes / (shm->samplebits / 8)) & (shm->samples-1);
//	fprintf(stderr, "%d    \r", count.ptr);
	shm->samplepos = count.offset / (shm->samplebits / 8);

	return shm->samplepos;

}

void SNDDMA_Shutdown(void)
{
	if (snd_inited)
	{
		close(audio_fd);
		snd_inited = 0;
	}
}

/*
==============
SNDDMA_Submit

Send sound to device if buffer isn't really the dma buffer
===============
*/
void SNDDMA_Submit(void)
{
}

