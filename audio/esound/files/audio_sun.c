/*	$OpenBSD: audio_sun.c,v 1.1 2001/08/04 05:03:20 brad Exp $	*/

#include "config.h"

#include <sys/audioio.h>

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
    int fmt = 0, channels = 0;
    int mode = O_WRONLY;
    audio_encoding_t enc;
    audio_info_t info;

    AUDIO_INITINFO(&info);

    /* number of channels */
    channels = (((esd_audio_format & ESD_MASK_CHAN) == ESD_STEREO)
        ? /* stereo */	2
	: /* mono */	1);

    /* set the appropriate mode */
    if((esd_audio_format & ESD_MASK_FUNC) == ESD_RECORD) {
        mode = O_RDWR;
	info.mode = AUMODE_PLAY | AUMODE_RECORD;
	info.play.channels = channels;
	info.record.channels = channels;
    } else {
	info.mode = AUMODE_PLAY;
	info.play.channels = channels;
    }

    mode |= O_NONBLOCK;

    /* open the sound device */
    device = esd_audio_device ? esd_audio_device : "/dev/audio";
    if ((afd = open(device, mode, 0)) == -1) {
        perror(device);
        return( -2 );
    }

    mode = fcntl(afd, F_GETFL);
    mode &= ~O_NONBLOCK;
    fcntl(afd, F_SETFL, mode);

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
    
#if defined(WORDS_BIGENDIAN)
    fmt = ( (esd_audio_format & ESD_MASK_BITS) == ESD_BITS16 )
        ? /* 16 bit */  AUDIO_ENCODING_SLINEAR_BE
	: /* 8 bit */	AUDIO_ENCODING_PCM8;
#else
    fmt = ( (esd_audio_format & ESD_MASK_BITS) == ESD_BITS16 )
        ? /* 16 bit */	AUDIO_ENCODING_SLINEAR_LE
	: /* 8 bit */	AUDIO_ENCODING_PCM8;
#endif

    enc.index = 0;
    while(!ioctl(afd, AUDIO_GETENC, &enc) && enc.encoding != fmt) {
	enc.index++;
    }
    
    info.play.encoding = fmt;
    info.play.precision = enc.precision;

    if(ioctl(afd, AUDIO_SETINFO, &info) == -1) {
	fprintf(stderr, "Unsupported encoding: %i-bit \"%s\" (0x%x)\n",
	    enc.precision, enc.name, fmt);
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
