/*	$OpenBSD: sunsound.c,v 1.1.1.1 2002/02/27 00:37:10 naddy Exp $	*/
/*	$RuOBSD: sunsound.c,v 1.2 2002/02/12 01:52:18 grange Exp $	*/

#include "config.h"

#if defined(HAVE_SYS_AUDIOIO_H)		/* SUN sound */

#include <sys/types.h>
#include <sys/audioio.h>
#include <sys/ioctl.h>

#include <fcntl.h>
#include <string.h>
#include <unistd.h>

#include "sunsound.h"

/* using (8) 64 byte frags for 8kHz, scale up for higher */
#define BASE_SOUND_FRAG_PWR	6

static int soundfd = -1;
static int sixteenbit = 0;

int
sunsound_init(freqptr, stereoptr)
	int *freqptr, *stereoptr;
{
	int frag;
	struct audio_info ai;

	if ((soundfd = open("/dev/audio", O_WRONLY)) == -1)
		return 1;

	AUDIO_INITINFO(&ai);

	ai.play.encoding = AUDIO_ENCODING_ULINEAR;
	ai.play.precision = 8;
	if (ioctl(soundfd, AUDIO_SETINFO, &ai) == -1) {
		/* try 16-bit, may be a 16-bit only device */
		ai.play.precision = 16;
		if (ioctl(soundfd, AUDIO_SETINFO, &ai) == -1) {
			close(soundfd);
			return 1;
		}
		sixteenbit = 1;
	}

	ai.play.channels = *stereoptr ? 2 : 1;
	if (ioctl(soundfd, AUDIO_SETINFO, &ai) == -1) {
		/* if it failed make sure the opposite is ok */
		ai.play.channels = *stereoptr ? 1 : 2;
		if (ioctl(soundfd, AUDIO_SETINFO, &ai) == -1) {
			close(soundfd);
			return 1;
		}
		*stereoptr = *stereoptr ? 1 : 2;
	}

	ai.play.sample_rate = *freqptr;
	if (ioctl(soundfd, AUDIO_SETINFO, &ai) == -1) {
		close(soundfd);
		return 1;
	}

	frag = 0x80000 | BASE_SOUND_FRAG_PWR;
	if (*freqptr > 8250)
		frag++;
	if (*freqptr > 16500)
		frag++;
	if (*freqptr > 33000)
		frag++;
	if (*stereoptr)
		frag++;
	if (sixteenbit)
		frag++;
	ai.blocksize = 1 << (frag & 0xffff);
	ai.hiwat = ((unsigned)frag >> 16) & 0x7fff;
	if (ai.hiwat == 0)
		ai.hiwat = 65536;
	if (ioctl(soundfd, AUDIO_SETINFO, &ai) == -1) {
		close(soundfd);
		return 1;
	}

	return 0;
}

void
sunsound_end()
{
	ioctl(soundfd, AUDIO_FLUSH);
	close(soundfd);
}

void
sunsound_frame(data, len)
	unsigned char *data;
	int len;
{
	unsigned char buf16[8192];
	int ret=0, ofs=0;

	if (sixteenbit) {
		unsigned char *src, *dst;
		int f;

		src = data;
		dst = buf16;
		for (f = 0; f < len; f++) {
			*dst++ = 128;
			*dst++ = *src++ - 128;
		}

		data = buf16;
		len <<= 1;
	}

	while (len) {
		if ((ret = write(soundfd, data + ofs, len)) == -1)
			break;
		ofs += ret;
		len -= ret;
	}
}

#endif /* HAVE_SYS_AUDIOIO_H */
