/*
 * Copyright (c) 2008 IWATA Ray <iwata@quasiquote.org>
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

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif /* HAVE_CONFIG_H */
#include <sndio.h>

#include "timidity.h"
#include "output.h"
#include "controls.h"
#include "timer.h"
#include "instrum.h"
#include "playmidi.h"
#include "miditrace.h"

static int open_output(void); /* 0=success, 1=warning, -1=fatal error */
static void close_output(void);
static int output_data(char *buf, int32 nbytes);
static int acntl(int request, void *arg);

/* export the playback mode */

#define dpm sndio_play_mode

PlayMode dpm = {
  DEFAULT_RATE, PE_SIGNED|PE_16BIT, PF_PCM_STREAM,
  -1,
  {0}, /* default: get all the buffer fragments you can */
  "sndio mode", 's',
  NULL,
  open_output,
  close_output,
  output_data,
  acntl
};

static struct sio_hdl *sndio_ctx;

static int open_output(void)
{
  static struct sio_par par, newpar;

  sndio_ctx = sio_open(NULL, SIO_PLAY, 0);
  if (sndio_ctx == NULL) {
    ctl->cmsg(CMSG_ERROR, VERB_NORMAL, "sio_open() failed");
    return -1;
  }

  sio_initpar(&par);

  par.sig = 1;
  par.pchan = (dpm.encoding & PE_MONO) ? 1 : 2;
  par.le = SIO_LE_NATIVE;
  par.rate = dpm.rate;
  if (dpm.encoding & PE_24BIT) {
    par.bits = 24;
    par.bps = 3;
  } else if (dpm.encoding & PE_16BIT) {
    par.bits = 16;
    par.bps = 2;
  } else {
    par.bits = 8;
    par.bps = 1;
  }

  if (!sio_setpar(sndio_ctx, &par)) {
    ctl->cmsg(CMSG_ERROR, VERB_NORMAL, "sio_setpar() failed");
    return -1;
  }

  if (sio_getpar(sndio_ctx, &newpar) == 0) {
    ctl->cmsg(CMSG_ERROR, VERB_NORMAL, "sio_getpar() failed");
    return -1;
  }
  if (newpar.sig != par.sig ||
      newpar.le != par.le ||
      newpar.pchan != par.pchan ||
      newpar.bits != par.bits ||
      newpar.bps != par.bps ||
      newpar.rate * 1000 > par.rate * 1005 ||
      newpar.rate * 1000 < par.rate *  995) {
    ctl->cmsg(CMSG_ERROR, VERB_NORMAL, "couldn't set output play parameters");
    return -1;
  }

  if (!sio_start(sndio_ctx)) {
    ctl->cmsg(CMSG_ERROR, VERB_NORMAL, "sio_start() failed");
    return -1;
  }
  return 0;
}

static int output_data(char *buf, int32 nbytes)
{
  if (!sio_write(sndio_ctx, buf, nbytes)) {
    ctl->cmsg(CMSG_WARNING, VERB_VERBOSE, "sio_write() failed");
    return -1;
  }
  return 0;
}

static void close_output(void)
{
  if (sndio_ctx != NULL) {
    sio_close(sndio_ctx);
    sndio_ctx = NULL;
  }
}

static int acntl(int request, void *arg)
{
  switch(request) {
  case PM_REQ_DISCARD:
  case PM_REQ_PLAY_START: /* Called just before playing */
  case PM_REQ_PLAY_END:   /* Called just after playing */
    return 0;
  }
  return -1;
}

