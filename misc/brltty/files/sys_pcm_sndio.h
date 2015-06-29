/*
 * BRLTTY - A background process providing access to the Linux console (when in
 *          text mode) for a blind person using a refreshable braille display.
 *
 * Copyright (C) 1995-2004 by The BRLTTY Team. All rights reserved.
 *
 * BRLTTY comes with ABSOLUTELY NO WARRANTY.
 *
 * This is free software, placed under the terms of the
 * GNU General Public License, as published by the Free Software
 * Foundation.  Please see the file COPYING for details.
 *
 * Web Page: http://mielke.cc/brltty/
 *
 * This software is maintained by Dave Mielke <dave@mielke.cc>.
 */

#include "iomisc.h"
#include <sndio.h>

struct PcmDeviceStruct {
  struct sio_hdl *hdl;
  struct sio_par par;
};

PcmDevice *
openPcmDevice (int errorLevel, const char *device) {
  PcmDevice *pcm;

  if (!device)
    device = SIO_DEVANY;
  pcm = malloc(sizeof(*pcm));
  if (pcm == NULL) {
    LogError("PCM device allocation");
    return NULL;
  }
  pcm->hdl = sio_open(device, SIO_PLAY, 0);
  if (pcm->hdl == NULL) {
      LogPrint(errorLevel, "Cannot open PCM device: %s", device);
      goto bad_free;
  }
  sio_initpar(&pcm->par);
  pcm->par.bits = 16;
  pcm->par.le = SIO_LE_NATIVE;
  pcm->par.pchan = 1;
  pcm->par.rate = 16000;
  pcm->par.sig = 1;
  if (!sio_setpar(pcm->hdl, &pcm->par) || !sio_getpar(pcm->hdl, &pcm->par)) {
    LogPrint(errorLevel, "Cannot set PCM device parameters");
    goto bad_free;
  }
  if (pcm->par.bits != 16 || pcm->par.le != SIO_LE_NATIVE ||
      pcm->par.pchan != 1 || pcm->par.rate != 16000) {
    LogPrint(errorLevel, "Unsupported PCM device parameters");
    goto bad_free;
  }
  if (!sio_start(pcm->hdl)) {
    LogPrint(errorLevel, "Cannot start PCM device");
    goto bad_free;
  }
  return pcm;
bad_free:
  free(pcm);
  return NULL;
}

void
closePcmDevice (PcmDevice *pcm) {
  sio_close(pcm->hdl);
  free(pcm);
}

int
writePcmData (PcmDevice *pcm, const unsigned char *buffer, int count) {
  return sio_write(pcm->hdl, buffer, count);
}

int
getPcmBlockSize (PcmDevice *pcm) {
  return pcm->par.appbufsz;
}

int
getPcmSampleRate (PcmDevice *pcm) {
  return pcm->par.rate;
}

int
setPcmSampleRate (PcmDevice *pcm, int rate) {
  return getPcmSampleRate(pcm);
}

int
getPcmChannelCount (PcmDevice *pcm) {
  return pcm->par.pchan;
}

int
setPcmChannelCount (PcmDevice *pcm, int channels) {
  return getPcmChannelCount(pcm);
}

PcmAmplitudeFormat
getPcmAmplitudeFormat (PcmDevice *pcm) {
  switch (pcm->par.bits) {
  case 8:
    return (pcm->par.sig) ? PCM_FMT_S8 : PCM_FMT_U8;
    break;
  case 16:
    if (pcm->par.le) {
      return (pcm->par.sig) ? PCM_FMT_S16L : PCM_FMT_U16L;
    } else {
      return (pcm->par.sig) ? PCM_FMT_S16B : PCM_FMT_U16B;
    }
    break;
  default:
    return PCM_FMT_UNKNOWN;
  }
}

PcmAmplitudeFormat
setPcmAmplitudeFormat (PcmDevice *pcm, PcmAmplitudeFormat format) {
  return getPcmAmplitudeFormat(pcm);
}

void
forcePcmOutput (PcmDevice *pcm) {
}

void
awaitPcmOutput (PcmDevice *pcm) {
}

void
cancelPcmOutput (PcmDevice *pcm) {
}
