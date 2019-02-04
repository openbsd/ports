/* 
 * Copyright (C) 1997-2004 Kare Sjolander <kare@speech.kth.se>
 * Copyright (C) 2010 Jacob Meuser <jakemsr@openbsd.org>
 *
 * This file is part of the Snack Sound Toolkit.
 * The latest version can be found at http://www.speech.kth.se/snack/
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 */

#include "tcl.h"
#include "jkAudIO.h"
#include "jkSound.h"
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>
#include <glob.h>

#include <poll.h>
#include <errno.h>

#include <sndio.h>

/* for mixer functions */
#include <soundcard.h>

#define MIXER_NAME  "/dev/mixer"

extern void Snack_WriteLog(char *s);
extern void Snack_WriteLogInt(char *s, int n);

#ifndef min
#define min(a,b) ((a)<(b)?(a):(b))
#define max(a,b) ((a)>(b)?(a):(b))
#endif

static int mfd = 0;

static struct MixerLink mixerLinks[SOUND_MIXER_NRDEVICES][2];

static int littleEndian = 0;


void
onmove_cb(void *addr, int delta)
{
  ADesc *A = addr;
  A->hardpos += delta * A->bytesPerSample * A->nChannels;
  if (A->debug > 9) Snack_WriteLogInt("  Leave onmove_cb\n", delta);
}

int
SnackAudioOpen(ADesc *A, Tcl_Interp *interp, char *device, int mode, int freq,
	       int nchannels, int encoding)
{
  struct sio_par par;
  char cmode[8];
  unsigned smode;

  A->debug = 0;

  if (A->debug > 1) Snack_WriteLog("  Enter SnackAudioOpen\n");

  switch (mode) {
  case RECORD:
    snprintf(cmode, sizeof(cmode), "record");
    smode = SIO_REC;
    break;
  case PLAY:
    snprintf(cmode, sizeof(cmode), "play");
    smode = SIO_PLAY;
    break;
  default:
    Tcl_AppendResult(interp, "Invalid mode", NULL);
      return TCL_ERROR;
    break;
  }

  // We always want to use the default device
  A->hdl = sio_open(NULL, smode, 0);
  if (A->hdl == NULL) {
    Tcl_AppendResult(interp, "Could not open sndio device for ", cmode, NULL);
    return TCL_ERROR;
  }
  A->mode = mode;

  sio_initpar(&par);

  A->convert = 0;

  switch (encoding) {
  case LIN16:
    par.le = littleEndian ? 1 : 0;
    par.sig = 1;
    par.bits = 16;
    par.bps = 2;
    break;
  case LIN24:
    par.le = littleEndian ? 1 : 0;
    par.sig = 1;
    par.bits = 24;
    par.bps = 4;
    break;
  case ALAW:
    par.le = littleEndian ? 1 : 0;
    par.sig = 1;
    par.bits = 16;
    par.bps = 2;
    A->convert = ALAW;
    break;
  case MULAW:
    par.le = littleEndian ? 1 : 0;
    par.sig = 1;
    par.bits = 16;
    par.bps = 2;
    A->convert = MULAW;
    break;
  case LIN8OFFSET:
    par.sig = 0;
    par.bits = 8;
    par.bps = 1;
    break;
  case LIN8:
    par.sig = 1;
    par.bits = 8;
    par.bps = 1;
    break;
  }

  switch (smode) {
  case SIO_REC:
    par.rchan = nchannels;
    break;
  case SIO_PLAY:
    par.pchan = nchannels;
    break;
  }

  par.rate = freq;

  if (!sio_setpar(A->hdl, &par)) {
    Tcl_AppendResult(interp, "Failed setting parameters.", NULL);
    return TCL_ERROR;
  }

  if (!sio_getpar(A->hdl, &A->par)) {
    Tcl_AppendResult(interp, "Failed getting parameters.", NULL);
    return TCL_ERROR;
  }

  if (par.bits != A->par.bits ||
      par.sig != A->par.sig ||
      par.le != A->par.le ||
      par.bps != A->par.bps) {
    Tcl_AppendResult(interp, "Format not supported.", NULL);
    return TCL_ERROR;
  }

  if ((smode == SIO_REC && par.rchan != A->par.rchan) ||
      (smode == SIO_PLAY && par.pchan != A->par.pchan)) {
    Tcl_AppendResult(interp, "Number of channels not supported.", NULL);
    return TCL_ERROR;
  }

  if (par.rate != A->par.rate) {
    Tcl_AppendResult(interp, "Sample frequency not supported.", NULL);
    return TCL_ERROR;
  }

  A->hardpos = A->softpos = 0;
  sio_onmove(A->hdl, onmove_cb, A);

  if (!sio_start(A->hdl)) {
    Tcl_AppendResult(interp, "Could not start sndio.", NULL);
    return TCL_ERROR;
  }

  A->frag_size = A->par.round * A->par.bps *
    (mode == PLAY ? A->par.pchan : A->par.rchan);

  A->nChannels = smode == SIO_REC ? A->par.rchan : A->par.pchan;
  A->bytesPerSample = A->par.bps;

  A->warm = 0;

  if (A->debug > 1) Snack_WriteLogInt("  Exit SnackAudioOpen", A->frag_size);

  return TCL_OK;
}

int
SnackAudioClose(ADesc *A)
{
  if (A->debug > 1) Snack_WriteLog("  Enter SnackAudioClose\n");

  sio_close(A->hdl);

  if (A->debug > 1) Snack_WriteLog("  Exit SnackAudioClose\n");

  return(0);
}

long
SnackAudioPause(ADesc *A)
{
  long res = SnackAudioPlayed(A);

  if (A->debug > 9) Snack_WriteLog("  Enter SnackAudioPause\n");

  /* nothing to do */

  return(res);
}

void
SnackAudioResume(ADesc *A)
{
  if (A->debug > 9) Snack_WriteLog("  Enter SnackAudioResume\n");

  /* nothing to do */
}

void
SnackAudioFlush(ADesc *A)
{
  if (A->debug > 9) Snack_WriteLog("  Enter SnackAudioFlush\n");

  /* nothing to do */
}

static char zeroBlock[16];

void
SnackAudioPost(ADesc *A)
{
  int n;

  if (A->debug > 1) Snack_WriteLog("  Enter SnackAudioPost\n");

  if (A->warm == 1) {
    int i;
    for (i = 0; i < A->frag_size / (A->bytesPerSample * A->nChannels); i++) {
      n = sio_write(A->hdl, zeroBlock, A->bytesPerSample * A->nChannels);
      A->softpos += n;
    }
    A->warm = 2;
  }

  if (A->debug > 1) Snack_WriteLog("  Exit SnackAudioPost\n");
}

int
SnackAudioRead(ADesc *A, void *buf, int nFrames)
{
  int n = 2;

  if (A->debug > 1) Snack_WriteLogInt("  Enter SnackAudioRead", nFrames);
  

  while (nFrames > n * 2) n *= 2;
  nFrames = n;

  if (A->convert) {
    int n = 0, i, res;
    short s[2];

    for (i = 0; i < nFrames * A->nChannels; i += A->nChannels) {
      res = sio_read(A->hdl, &s, A->nChannels * sizeof(short));
      A->softpos += res;
      if (res <= 0) return(n / (A->bytesPerSample * A->nChannels));
      if (A->convert == ALAW) {
	((unsigned char *)buf)[i] = Snack_Lin2Alaw(s[0]);
	if (A->nChannels == 2) {
	  ((unsigned char *)buf)[i+1] = Snack_Lin2Alaw(s[1]);
	}
      } else {
	((unsigned char *)buf)[i] = Snack_Lin2Mulaw(s[0]);
	if (A->nChannels == 2) {
	  ((unsigned char *)buf)[i+1] = Snack_Lin2Mulaw(s[1]);
	}
      }
      n += res;
    }

    return(n / (A->bytesPerSample * A->nChannels));
  } else {
    int n = sio_read(A->hdl, (unsigned char *)buf,
      nFrames * A->bytesPerSample * A->nChannels);
    A->softpos += n;

    if (n > 0) n /= (A->bytesPerSample * A->nChannels);

    if (A->debug > 1) Snack_WriteLogInt("  Exit SnackAudioRead", n);

    return(n);
  }
}

int
SnackAudioWrite(ADesc *A, void *buf, int nFrames)
{
  if (A->debug > 1) Snack_WriteLogInt("  Enter SnackAudioWrite\n", nFrames);

  if (A->warm == 0) A->warm = 1;

  if (A->convert) {
    int n = 0, i, res;
    short s;

    for (i = 0; i < nFrames * A->nChannels; i++) {
      if (A->convert == ALAW) {
	s = Snack_Alaw2Lin(((unsigned char *)buf)[i]);
      } else {
	s = Snack_Mulaw2Lin(((unsigned char *)buf)[i]);
      }
      res = sio_write(A->hdl, &s, sizeof(short));
      A->softpos += res;
      if (res <= 0) return(n / (A->bytesPerSample * A->nChannels));
      n += res;
    }

    return(n / (A->bytesPerSample * A->nChannels));
  } else {
    int n = sio_write(A->hdl, buf, nFrames * A->bytesPerSample * A->nChannels); 
    A->softpos += n;

    if (A->debug > 9) Snack_WriteLogInt("  SnackAudioWrite wrote \n", n);

    if (n > 0) n /= (A->bytesPerSample * A->nChannels);

    return(n);
  }
}

void
SnackSndioUpdatePos(ADesc *A)
{
  struct pollfd pfd;
  int n, revents;

  n = sio_pollfd(A->hdl, &pfd, A->mode == PLAY ? POLLOUT : POLLIN);
  while (poll(&pfd, n, 0) < 0 && errno == EINTR)
    ; /* nothing */
  revents = sio_revents(A->hdl, &pfd);
}

int
SnackAudioReadable(ADesc *A)
{
  int all, used, avail;

  SnackSndioUpdatePos(A);

  all = A->par.bufsz * A->bytesPerSample * A->nChannels;

  used = A->hardpos < 0 ? 0 : A->hardpos - A->softpos;

  avail = used < all ? used : all;

  /* XXX this is what the OSS backend does, not sure why */
  if (avail > 60*44100*4) avail = 0;

  if (A->debug > 1) Snack_WriteLogInt("  Exit SnackAudioReadable", avail);

  return (avail / (A->bytesPerSample * A->nChannels));
}

int
SnackAudioWriteable(ADesc *A)
{
  int all, used, avail;

  SnackSndioUpdatePos(A);

  all = A->par.bufsz * A->bytesPerSample * A->nChannels;

  used = A->hardpos < 0 ? A->softpos: A->softpos - A->hardpos;

  avail = all - used;

  if (A->debug > 9) Snack_WriteLogInt("  Leave SnackAudioWriteable\n", avail);

  return (avail / (A->bytesPerSample * A->nChannels));
}

long
SnackAudioPlayed(ADesc *A)
{
  long res;

  res = A->softpos / (A->nChannels * A->bytesPerSample);
  
  return(res);
}

void
SnackAudioInit()
{
  union {
    char c[sizeof(short)];
    short s;
  } order;

  /* Compute the byte order of this machine. */

  order.s = 1;
  if (order.c[0] == 1) {
    littleEndian = 1;
  }

  if ((mfd = open(MIXER_NAME, O_RDWR, 0)) == -1) {
    fprintf(stderr, "Unable to open mixer %s\n", MIXER_NAME);
  }
}

void
SnackAudioFree()
{
  int i, j;

  for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
    for (j = 0; j < 2; j++) {
      if (mixerLinks[i][j].mixer != NULL) {
	ckfree(mixerLinks[i][j].mixer);
      }
      if (mixerLinks[i][j].mixerVar != NULL) {
	ckfree(mixerLinks[i][j].mixerVar);
      }
    }
    if (mixerLinks[i][0].jack != NULL) {
      ckfree(mixerLinks[i][0].jack);
    }
    if (mixerLinks[i][0].jackVar != NULL) {
      ckfree((char *)mixerLinks[i][0].jackVar);
    }
  }

  close(mfd);
}

void
ASetRecGain(int gain)
{
  int g = min(max(gain, 0), 100);
  int recsrc = 0;

  g = g * 256 + g;
  ioctl(mfd, SOUND_MIXER_READ_RECSRC, &recsrc);
  if (recsrc & SOUND_MASK_LINE) {
    ioctl(mfd, SOUND_MIXER_WRITE_LINE, &g);
  } else {
    ioctl(mfd, SOUND_MIXER_WRITE_MIC, &g);
  }
}

void
ASetPlayGain(int gain)
{
  int g = min(max(gain, 0), 100);
  int pcm_gain = 25700;

  g = g * 256 + g;
  ioctl(mfd, SOUND_MIXER_WRITE_VOLUME, &g);
  ioctl(mfd, SOUND_MIXER_WRITE_PCM, &pcm_gain);
}

int
AGetRecGain()
{
  int g = 0, left, right, recsrc = 0;

  ioctl(mfd, SOUND_MIXER_READ_RECSRC, &recsrc);
  if (recsrc & SOUND_MASK_LINE) {
    ioctl(mfd, SOUND_MIXER_READ_LINE, &g);
  } else {
    ioctl(mfd, SOUND_MIXER_READ_MIC, &g);
  }
  left  =  g & 0xff;
  right = (g & 0xff00) / 256;
  g = (left + right) / 2;

  return(g);
}

int
AGetPlayGain()
{
  int g = 0, left, right;
  
  ioctl(mfd, SOUND_MIXER_READ_VOLUME, &g);
  left  =  g & 0xff;
  right = (g & 0xff00) / 256;
  g = (left + right) / 2;

  return(g);
}

int
SnackAudioGetEncodings(char *device)
{
  struct sio_hdl *hdl;
  struct sio_cap cap;

  // we always want to use the default device
  hdl = sio_open(NULL, SIO_PLAY, 0);
  if (hdl == NULL) {
  }

  return(LIN16);
}

void
SnackAudioGetRates(char *device, char *buf, int n)
{
  int freq, pos=0, i;
  int f[] = { 8000, 11025, 16000, 22050, 32000, 44100, 48000, 96000 };

  for (i = 0; i < 8; i++) {
    freq = f[i];
    pos += sprintf(&buf[pos], "%d ", freq);
  }
}

int
SnackAudioMaxNumberChannels(char *device)
{
  return(2);
}

int
SnackAudioMinNumberChannels(char *device)
{
  return(1);
}

void
SnackMixerGetInputJackLabels(char *buf, int n)
{
  char *jackLabels[SOUND_MIXER_NRDEVICES] = SOUND_DEVICE_LABELS;
  int i, recMask, pos = 0;

  if (mfd != -1) {
    ioctl(mfd, SOUND_MIXER_READ_RECMASK, &recMask);
    for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
      if ((1 << i) & recMask) {
	pos += sprintf(&buf[pos], "%s", jackLabels[i]);
	pos += sprintf(&buf[pos], " ");
      }
    }
  } else {
    buf[0] = '\0';
  }
  buf[n-1] = '\0';
}

void
SnackMixerGetOutputJackLabels(char *buf, int n)
{
  buf[0] = '\0';
}

void
SnackMixerGetInputJack(char *buf, int n)
{
  char *jackLabels[SOUND_MIXER_NRDEVICES] = SOUND_DEVICE_LABELS;
  int i, recSrc = 0, pos = 0;

  ioctl(mfd, SOUND_MIXER_READ_RECSRC, &recSrc);
  for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
    if ((1 << i) & recSrc) {
      pos += sprintf(&buf[pos], "%s", jackLabels[i]);
      while (isspace(buf[pos-1])) pos--;
      pos += sprintf(&buf[pos], " ");
    }
  }
  if(isspace(buf[pos-1])) pos--;
  buf[pos] = '\0';
  /*printf("SnackMixerGetInputJack %x, %s\n", recSrc, buf);*/
}

int
SnackMixerSetInputJack(Tcl_Interp *interp, char *jack, CONST84 char *status)
{
  char *jackLabels[SOUND_MIXER_NRDEVICES] = SOUND_DEVICE_LABELS;
  int i, recSrc = 0, currSrc;

  for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
    if (strncasecmp(jack, jackLabels[i], strlen(jack)) == 0) {
      recSrc = 1 << i;
      break;
    }
  }
  
  ioctl(mfd, SOUND_MIXER_READ_RECSRC, &currSrc);

/*  printf("SnackMixerSetInputJack1 %x %s %s\n", currSrc, jack, status);*/

  if (strcmp(status, "1") == 0) {
    recSrc |= currSrc;
  } else {
    recSrc = (currSrc & ~recSrc);
  }
/*  printf("SnackMixerSetInputJack2 %x\n", recSrc);*/
  
  if (ioctl(mfd, SOUND_MIXER_WRITE_RECSRC, &recSrc) == -1) {
    return 1;
  } else {
    ioctl(mfd, SOUND_MIXER_READ_RECSRC, &recSrc);
/*    printf("SnackMixerSetInputJack3 %x\n", recSrc);*/
    return 0;
  }
  return 1;
}

void
SnackMixerGetOutputJack(char *buf, int n)
{
  buf[0] = '\0';
}

void
SnackMixerSetOutputJack(char *jack, char *status)
{
}

static int dontTrace = 0;

static char *
JackVarProc(ClientData clientData, Tcl_Interp *interp, CONST84 char *name1,
	    CONST84 char *name2, int flags)
{
  MixerLink *mixLink = (MixerLink *) clientData;
  char *jackLabels[SOUND_MIXER_NRDEVICES] = SOUND_DEVICE_LABELS;
  int i, recSrc = 0, status = 0;
  CONST84 char *stringValue;
  Tcl_Obj *obj, *var;

  if (dontTrace) return (char *) NULL;

  ioctl(mfd, SOUND_MIXER_READ_RECSRC, &recSrc);
/*printf("JackVarProc %x %s %s\n", recSrc, name1, name2);*/
  if (flags & TCL_TRACE_UNSETS) {
    if ((flags & TCL_TRACE_DESTROYED) && !(flags & TCL_INTERP_DESTROYED)) {
      for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
	if (strncasecmp(mixLink->jack, jackLabels[i], strlen(mixLink->jack))
	    == 0) {
	  if ((1 << i) & recSrc) {
	    status = 1;
	  } else {
	    status = 0;
	  }
	  break;
	}
      }
      obj = Tcl_NewIntObj(status);
      var = Tcl_NewStringObj(mixLink->jackVar, -1);
      Tcl_ObjSetVar2(interp, var, NULL, obj, TCL_GLOBAL_ONLY | TCL_PARSE_PART1);
      Tcl_TraceVar(interp, mixLink->jackVar,
		   TCL_GLOBAL_ONLY|TCL_TRACE_WRITES|TCL_TRACE_UNSETS,
		   JackVarProc, mixLink);
    }
    return (char *) NULL;
  }

  stringValue = Tcl_GetVar(interp, mixLink->jackVar, TCL_GLOBAL_ONLY);
  if (stringValue != NULL) {
    SnackMixerSetInputJack(interp, mixLink->jack, stringValue);
  }

  ioctl(mfd, SOUND_MIXER_READ_RECSRC, &recSrc);
/*printf("JackVarProc2 %x\n", recSrc);*/
  dontTrace = 1;
  for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
    if (mixerLinks[i][0].jackVar != NULL) {
      if ((1 << i) & recSrc) {
	status = 1;
      } else {
	status = 0;
      }
      obj = Tcl_NewIntObj(status);
      var = Tcl_NewStringObj(mixerLinks[i][0].jackVar, -1);
      Tcl_ObjSetVar2(interp, var, NULL, obj, TCL_GLOBAL_ONLY |TCL_PARSE_PART1);
    }
  }
  dontTrace = 0;

  return (char *) NULL;
}

void
SnackMixerLinkJacks(Tcl_Interp *interp, char *jack, Tcl_Obj *var)
{
  char *jackLabels[SOUND_MIXER_NRDEVICES] = SOUND_DEVICE_LABELS;
  int i, recSrc = 0, status;
  CONST84 char *value;

  ioctl(mfd, SOUND_MIXER_READ_RECSRC, &recSrc);

  for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
    if (strncasecmp(jack, jackLabels[i], strlen(jack)) == 0) {
      if ((1 << i) & recSrc) {
	status = 1;
      } else {
	status = 0;
      }
      mixerLinks[i][0].jack = SnackStrDup(jack);
      mixerLinks[i][0].jackVar = SnackStrDup(Tcl_GetStringFromObj(var, NULL));
      value = Tcl_GetVar(interp, mixerLinks[i][0].jackVar, TCL_GLOBAL_ONLY);
      if (value != NULL) {
	SnackMixerSetInputJack(interp, mixerLinks[i][0].jack, value);
      } else {
	Tcl_Obj *obj = Tcl_NewIntObj(status);
	Tcl_ObjSetVar2(interp, var, NULL, obj, 
		       TCL_GLOBAL_ONLY | TCL_PARSE_PART1);

      }
      Tcl_TraceVar(interp, mixerLinks[i][0].jackVar,
		   TCL_GLOBAL_ONLY|TCL_TRACE_WRITES|TCL_TRACE_UNSETS,
		   JackVarProc, (ClientData) &mixerLinks[i][0]);
      break;
    }
  }
}

void
SnackMixerGetChannelLabels(char *line, char *buf, int n)
{
  char *mixLabels[SOUND_MIXER_NRDEVICES] = SOUND_DEVICE_LABELS;
  int i, devMask;

  ioctl(mfd, SOUND_MIXER_READ_STEREODEVS, &devMask);
  for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
    if (strncasecmp(line, mixLabels[i], strlen(line)) == 0) {
      if (devMask & (1 << i)) {
	sprintf(buf, "Left Right");
      } else {
	sprintf(buf, "Mono");
      }
      break;
    }
  }
}

void
SnackMixerGetVolume(char *line, int channel, char *buf, int n)
{
  char *mixLabels[SOUND_MIXER_NRDEVICES] = SOUND_DEVICE_LABELS;
  int i, vol = 0, devMask, isStereo = 0, left, right;

  buf[0] = '\0';

  for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
    if (strncasecmp(line, mixLabels[i], strlen(line)) == 0) {
      ioctl(mfd, MIXER_READ(i), &vol);
      ioctl(mfd, SOUND_MIXER_READ_STEREODEVS, &devMask);
      if (devMask & (1 << i)) {
	isStereo = 1;
      }
      break;
    }
  }
  left  =  vol & 0xff;
  right = (vol & 0xff00) >> 8;
  if (isStereo) {
    if (channel == 0) {
      sprintf(buf, "%d", left);
    } else if (channel == 1) {
      sprintf(buf, "%d", right);
    } else if (channel == -1) {
      sprintf(buf, "%d", (left + right)/2);
    }
  } else {
    sprintf(buf, "%d", left);
  }
}

void
SnackMixerSetVolume(char *line, int channel, int volume)
{
  char *mixLabels[SOUND_MIXER_NRDEVICES] = SOUND_DEVICE_LABELS;
  int tmp = min(max(volume, 0), 100), i, oldVol = 0;
  int vol = (tmp << 8) + tmp;

  if (channel == 0) {
    vol = tmp;
  }
  if (channel == 1) {
    vol = tmp << 8;
  }

  for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
    if (strncasecmp(line, mixLabels[i], strlen(line)) == 0) {
      ioctl(mfd, MIXER_READ(i), &oldVol);
      if (channel == 0) {
	vol = (oldVol & 0xff00) | (vol & 0x00ff);
      }
      if (channel == 1) {
	vol = (vol & 0xff00) | (oldVol & 0x00ff);
      }
      ioctl(mfd, MIXER_WRITE(i), &vol);
      break;
    }
  }
}

static char *
VolumeVarProc(ClientData clientData, Tcl_Interp *interp, CONST84 char *name1,
	      CONST84 char *name2, int flags)
{
  MixerLink *mixLink = (MixerLink *) clientData;
  CONST84 char *stringValue;
  
  if (flags & TCL_TRACE_UNSETS) {
    if ((flags & TCL_TRACE_DESTROYED) && !(flags & TCL_INTERP_DESTROYED)) {
      Tcl_Obj *obj, *var;
      char tmp[VOLBUFSIZE];

      SnackMixerGetVolume(mixLink->mixer, mixLink->channel, tmp, VOLBUFSIZE);
      obj = Tcl_NewIntObj(atoi(tmp));
      var = Tcl_NewStringObj(mixLink->mixerVar, -1);
      Tcl_ObjSetVar2(interp, var, NULL, obj, TCL_GLOBAL_ONLY | TCL_PARSE_PART1);
      Tcl_TraceVar(interp, mixLink->mixerVar,
		   TCL_GLOBAL_ONLY|TCL_TRACE_WRITES|TCL_TRACE_UNSETS,
		   VolumeVarProc, mixLink);
    }
    return (char *) NULL;
  }

  stringValue = Tcl_GetVar(interp, mixLink->mixerVar, TCL_GLOBAL_ONLY);
  if (stringValue != NULL) {
    SnackMixerSetVolume(mixLink->mixer, mixLink->channel, atoi(stringValue));
  }

  return (char *) NULL;
}

void
SnackMixerLinkVolume(Tcl_Interp *interp, char *line, int n,
		     Tcl_Obj *CONST objv[])
{
  char *mixLabels[SOUND_MIXER_NRDEVICES] = SOUND_DEVICE_LABELS;
  int i, j, channel;
  CONST84 char *value;
  char tmp[VOLBUFSIZE];

  for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
    if (strncasecmp(line, mixLabels[i], strlen(line)) == 0) {
      for (j = 0; j < n; j++) {
	if (n == 1) {
	  channel = -1;
	} else {
	  channel = j;
	}
	mixerLinks[i][j].mixer = SnackStrDup(line);
	mixerLinks[i][j].mixerVar = SnackStrDup(Tcl_GetStringFromObj(objv[j+3],NULL));
	mixerLinks[i][j].channel = j;
	value = Tcl_GetVar(interp, mixerLinks[i][j].mixerVar, TCL_GLOBAL_ONLY);
	if (value != NULL) {
	  SnackMixerSetVolume(line, channel, atoi(value));
	} else {
	  Tcl_Obj *obj;
	  SnackMixerGetVolume(line, channel, tmp, VOLBUFSIZE);
	  obj = Tcl_NewIntObj(atoi(tmp));
	  Tcl_ObjSetVar2(interp, objv[j+3], NULL, obj, 
			 TCL_GLOBAL_ONLY | TCL_PARSE_PART1);
	}
	Tcl_TraceVar(interp, mixerLinks[i][j].mixerVar,
		     TCL_GLOBAL_ONLY|TCL_TRACE_WRITES|TCL_TRACE_UNSETS,
		     VolumeVarProc, (ClientData) &mixerLinks[i][j]);
      }
    }
  }
}

void
SnackMixerUpdateVars(Tcl_Interp *interp)
{
  int i, j, recSrc, status;
  char tmp[VOLBUFSIZE];
  Tcl_Obj *obj, *var;

  ioctl(mfd, SOUND_MIXER_READ_RECSRC, &recSrc);
  for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
    for (j = 0; j < 2; j++) {
      if (mixerLinks[i][j].mixerVar != NULL) {
	SnackMixerGetVolume(mixerLinks[i][j].mixer, mixerLinks[i][j].channel,
			    tmp, VOLBUFSIZE);
	obj = Tcl_NewIntObj(atoi(tmp));
	var = Tcl_NewStringObj(mixerLinks[i][j].mixerVar, -1);
	Tcl_ObjSetVar2(interp, var, NULL, obj, TCL_GLOBAL_ONLY|TCL_PARSE_PART1);
      }
    }
    if (mixerLinks[i][0].jackVar != NULL) {
      if ((1 << i) & recSrc) {
	status = 1;
      } else {
	status = 0;
      }
      obj = Tcl_NewIntObj(status);
      var = Tcl_NewStringObj(mixerLinks[i][0].jackVar, -1);
      Tcl_ObjSetVar2(interp, var, NULL, obj, TCL_GLOBAL_ONLY | TCL_PARSE_PART1);
    }
  }
}

void
SnackMixerGetLineLabels(char *buf, int n)
{
  char *mixLabels[SOUND_MIXER_NRDEVICES] = SOUND_DEVICE_LABELS;
  int i, devMask, pos = 0;

  if (mfd != -1) {
    ioctl(mfd, SOUND_MIXER_READ_DEVMASK, &devMask);
    for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
      if ((1 << i) & devMask && pos < n-8) {
	pos += sprintf(&buf[pos], "%s", mixLabels[i]);
	pos += sprintf(&buf[pos], " ");
      }
    }
  } else {
    buf[0] = '\0';
  }
  buf[n-1] = '\0';
}

int
SnackGetOutputDevices(char **arr, int n)
{
  return SnackGetInputDevices(arr, n);
}

int
SnackGetInputDevices(char **arr, int n)
{
  size_t i;
  int j = 0;
  glob_t globt;
  
  glob("/dev/audio*", 0, NULL, &globt);
  //glob("/dev/audio*", GLOB_APPEND, NULL, &globt);

  for (i = 0; i < globt.gl_pathc; i++) {
    if (j < n) {
      arr[j++] = (char *) SnackStrDup("default");
    }
  }
  globfree(&globt);

  return(1);
}

int
SnackGetMixerDevices(char **arr, int n)
{
  int i, j = 0;
  glob_t globt;
  
  glob("/dev/mixer*", 0, NULL, &globt);
  
  for (i = 0; i < globt.gl_pathc; i++) {
    if (j < n) {
      arr[j++] = (char *) SnackStrDup(globt.gl_pathv[i]);
    }
  }
  globfree(&globt);

  return(j);
}
