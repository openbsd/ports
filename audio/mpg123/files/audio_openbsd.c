#include <sys/types.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

#include <stdlib.h>

#include <sys/ioctl.h>

#include "mpg123.h"

#include <sys/audioio.h>

static void audio_set_format_helper(int fmt, audio_info_t *ainfo);

static int audio_fd = -1;
static int uptodate = 1;
static int possible = 0;

static audio_info_t ainfo;

static void really_close_audio()
{
  if (audio_fd != -1)
    close(audio_fd);
}

static void really_open_audio(struct audio_info_struct *ai)
{
  if (audio_fd == -1) {
    audio_encoding_t cap;

    if(!ai->device) {
      if(getenv("AUDIODEV")) {
	if(param.verbose > 1) 
	   fprintf(stderr,"Using audio-device value from AUDIODEV environment variable!\n");
	ai->device = getenv("AUDIODEV");
      }
      else 
	ai->device = "/dev/audio";
    }
    audio_fd = open(ai->device, O_WRONLY);
    for (cap.index = 0; ioctl(audio_fd, AUDIO_GETENC, &cap) == 0; cap.index++) {
      if (cap.flags & AUDIO_ENCODINGFLAG_EMULATED)
	continue;
      switch(cap.encoding) {
      case AUDIO_ENCODING_ULAW:
	possible |= AUDIO_FORMAT_ULAW_8;
	break;
      case AUDIO_ENCODING_ALAW:
	possible |= AUDIO_FORMAT_ALAW_8;
	break;
      case AUDIO_ENCODING_SLINEAR:
      case AUDIO_ENCODING_SLINEAR_BE:
      case AUDIO_ENCODING_SLINEAR_LE:
	if (cap.precision == 8)
	  possible |= AUDIO_FORMAT_SIGNED_8;
	else
	  possible |= AUDIO_FORMAT_SIGNED_16;
	break;
      case AUDIO_ENCODING_ULINEAR:
      case AUDIO_ENCODING_ULINEAR_BE:
      case AUDIO_ENCODING_ULINEAR_LE:
	if (cap.precision == 8)
	  possible |= AUDIO_FORMAT_UNSIGNED_8;
	else
	  possible |= AUDIO_FORMAT_UNSIGNED_16;
	break;
      }
    }
    atexit(really_close_audio);
  }
}
  
int audio_open(struct audio_info_struct *ai)
{
  really_open_audio(ai);

  ai->fn = audio_fd;
  if(ai->fn < 0)
     return ai->fn;

  AUDIO_INITINFO(&ainfo);
  uptodate = 0;
  {
    audio_device_t ad;
    if(ioctl(ai->fn, AUDIO_GETDEV, &ad) == -1)
      return -1;
    if(param.verbose > 1)
      fprintf(stderr,"Audio device type: %s\n",ad.name);
  }

  if(audio_reset_parameters(ai) < 0) {
    return -1;
  }

  return ai->fn;
}

int audio_reset_parameters(struct audio_info_struct *ai)
{
  int ret;

  if(ai->rate != -1)
    ainfo.play.sample_rate = ai->rate;
  if(ai->channels >= 0)
    ainfo.play.channels = ai->channels;
  audio_set_format_helper(ai->format,&ainfo);
  uptodate = 0;

  return 0;
}

int audio_rate_best_match(struct audio_info_struct *ai)
{
  audio_info_t ainfo;
 
  ainfo.play.sample_rate = ai->rate;
  if(ioctl(ai->fn, AUDIO_SETINFO, &ainfo) < 0) {
    ai->rate = 0;
    return 0;
  }
  if(ioctl(ai->fn, AUDIO_GETINFO, &ainfo) < 0) {
    return -1;
  }
  ai->rate = ainfo.play.sample_rate;
  uptodate = 1;
  return 0;
}

int audio_set_rate(struct audio_info_struct *ai)
{
  audio_info_t ainfo;

  if(ai->rate != -1) {
    ainfo.play.sample_rate = ai->rate;
    uptodate = 0;
    return 0;
  }
  return -1;
}

int audio_set_channels(struct audio_info_struct *ai)
{
  audio_info_t ainfo;

  ainfo.play.channels = ai->channels;
  uptodate = 0;
  return 0;
}

static void audio_set_format_helper(int fmt, audio_info_t *ainfo)
{
  switch(fmt) {
    case -1:
    case AUDIO_FORMAT_SIGNED_16:
    default:
      ainfo->play.encoding = AUDIO_ENCODING_SLINEAR;
      ainfo->play.precision = 16;
      break;
    case AUDIO_FORMAT_UNSIGNED_16:
      ainfo->play.encoding = AUDIO_ENCODING_ULINEAR;
      ainfo->play.precision = 16;
      break;
    case AUDIO_FORMAT_UNSIGNED_8:
      ainfo->play.encoding = AUDIO_ENCODING_ULINEAR;
      ainfo->play.precision = 8;
      break;
    case AUDIO_FORMAT_SIGNED_8:
      ainfo->play.encoding = AUDIO_ENCODING_SLINEAR;
      ainfo->play.precision = 8;
      break;
    case AUDIO_FORMAT_ULAW_8:
      ainfo->play.encoding = AUDIO_ENCODING_ULAW;
      ainfo->play.precision = 8;
      break;
    case AUDIO_FORMAT_ALAW_8:
      ainfo->play.encoding = AUDIO_ENCODING_ALAW;
      ainfo->play.precision = 8;
      break;
  }
}

int audio_set_format(struct audio_info_struct *ai)
{
  audio_set_format_helper(ai->format,&ainfo);
  uptodate = 0;

  return 0;
}


static int try_format(int fmt, struct audio_info_struct *ai)
{
  audio_info_t ainfo;

  AUDIO_INITINFO(&ainfo);

  audio_set_format_helper(fmt, &ainfo);
  ainfo.play.sample_rate = ai->rate;
  ainfo.play.channels = ai->channels;
  if(ioctl(audio_fd, AUDIO_SETINFO, &ainfo) >= 0) 
    return fmt;
  else
    return 0;
}

int audio_get_formats(struct audio_info_struct *ai)
{
  int fmts = 0;

  really_open_audio(ai);

  if ((possible & AUDIO_FORMAT_SIGNED_16) == AUDIO_FORMAT_SIGNED_16)
    fmts |= try_format(AUDIO_FORMAT_SIGNED_16, ai);
  else if ((possible & AUDIO_FORMAT_UNSIGNED_16) == AUDIO_FORMAT_UNSIGNED_16)
    fmts |= try_format(AUDIO_FORMAT_UNSIGNED_16, ai);
  if ((possible & AUDIO_FORMAT_SIGNED_8) == AUDIO_FORMAT_SIGNED_8)
    fmts |= try_format(AUDIO_FORMAT_SIGNED_8, ai);
  else if ((possible & AUDIO_FORMAT_UNSIGNED_8) == AUDIO_FORMAT_UNSIGNED_8)
    fmts |= try_format(AUDIO_FORMAT_UNSIGNED_8, ai);
  if (!fmts && ((possible & AUDIO_FORMAT_ULAW_8) == AUDIO_FORMAT_ULAW_8))
    fmts |= try_format(AUDIO_FORMAT_ULAW_8, ai);
  if (!fmts && ((possible & AUDIO_FORMAT_ALAW_8) == AUDIO_FORMAT_ALAW_8))
    fmts |= try_format(AUDIO_FORMAT_ALAW_8, ai);
  return fmts;
}
    

int audio_play_samples(struct audio_info_struct *ai,unsigned char *buf,int len)
{
  if (!uptodate) {
    uptodate = 1;
    ioctl(ai->fn, AUDIO_SETINFO, &ainfo);
  }
  
  return write(ai->fn,buf,len);
}

int audio_close(struct audio_info_struct *ai)
{
  return 0;
}

void audio_queueflush (struct audio_info_struct *ai)
{
	ioctl (ai->fn, AUDIO_FLUSH, 0);
}
