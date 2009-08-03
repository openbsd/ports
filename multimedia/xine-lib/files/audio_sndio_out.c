/*	$OpenBSD: audio_sndio_out.c,v 1.4 2009/08/03 11:03:10 sthen Exp $	*/

/*
 * Copyright (c) 2008 Brad Smith <brad@comstyle.com>
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

/* ao plugin for sndio by Brad Smith <brad@comstyle.com>. */

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <stdio.h>
#include <errno.h>
#include <string.h>
#include <stdlib.h>
#include <fcntl.h>
#include <math.h>
#include <unistd.h>
#include <inttypes.h>
#include <pthread.h>

#include <sndio.h>

#include "xine_internal.h"
#include "xineutils.h"
#include "audio_out.h"
#include "bswap.h"

#define GAP_TOLERANCE        AO_MAX_GAP
#define PCT_TO_MIDI(p)       (((p) * SIO_MAXVOL + 50) / 100)

typedef struct {
  audio_driver_class_t  driver_class;
  xine_t                *xine;
} sndio_class_t;

typedef struct sndio_driver_s {
  ao_driver_t    ao_driver;
  xine_t         *xine;

  struct sio_hdl *hdl;
  long long      realpos, playpos;
  int            capabilities;

  int            num_channels;
  u_int32_t      bits_per_sample;
  u_int32_t      bytes_per_frame;

  struct {
    int          volume;
    int          mute;
  } mixer;
} sndio_driver_t;

/*
 * Callback to notify of frames processed by the hw. It is
 * called from the mail loop called from sio_write().
 */
static void ao_sndio_onmove_cb(void *addr, int delta)
{
  sndio_driver_t *this = (sndio_driver_t *)addr;

  this->realpos += delta;
}

/*
 * Open the audio device for writing to.
 */
static int ao_sndio_open(ao_driver_t *this_gen,
                         uint32_t bits, uint32_t rate, int mode)
{
  sndio_driver_t *this = (sndio_driver_t *) this_gen;
  struct sio_par par;

  xprintf (this->xine, XINE_VERBOSITY_DEBUG,
           "audio_sndio_out: ao_sndio_open bits=%d rate=%d, mode=%d\n",
           bits, rate, mode);

  if (this->hdl != NULL) {
    sio_close (this->hdl);
    this->hdl = NULL;
  }

  this->hdl = sio_open(NULL, SIO_PLAY, 0);
  if (this->hdl == NULL)
    goto bad;

  sio_initpar(&par);

  switch (mode) {
  case AO_CAP_MODE_MONO:
    par.pchan = 1;
    break;
  case AO_CAP_MODE_STEREO:
    par.pchan = 2;
    break;
#if 0
  case AO_CAP_MODE_4CHANNEL:
    par.pchan = 4;
    break;
  case AO_CAP_MODE_4_1CHANNEL:
  case AO_CAP_MODE_5CHANNEL:
  case AO_CAP_MODE_5_1CHANNEL:
    par.pchan = 6;
    break;
#endif
  default:
    xprintf (this->xine, XINE_VERBOSITY_DEBUG,
             "audio_sndio_out: ao_sndio_open does not support the requested mode: 0x%X\n",
	     mode);
    goto bad;
  }

  switch (bits) {
  case 8:
    par.bits = 8;
    par.sig = 0;
    break;
  case 16:
    par.bits = 16;
    par.sig = 1;
    break;
  default:
    xprintf (this->xine, XINE_VERBOSITY_DEBUG,
             "audio_sndio_out: ao_sndio_open bits per sample not supported: %d\n", bits);
    goto bad;
  }

  par.rate = rate;
  par.appbufsz = par.rate * 250 / 1000; /* 250ms buffer */

  if (!sio_setpar(this->hdl, &par)) {
    xprintf (this->xine, XINE_VERBOSITY_DEBUG,
             "audio_sndio_out: ao_sndio_open could not set params\n");
    goto bad;
  }

  if (!sio_getpar(this->hdl, &par)) {
    xprintf (this->xine, XINE_VERBOSITY_DEBUG,
             "audio_sndio_out: ao_sndio_open could not get params\n");
    goto bad;
  }

  xprintf (this->xine, XINE_VERBOSITY_DEBUG,
           "audio_sndio_out: ao_sndio_open %d channels output\n",
           par.pchan);

  this->num_channels           = par.pchan;
  this->bytes_per_frame        = par.bps * par.pchan;
  this->playpos                = 0;
  this->realpos                = 0;
  sio_onmove(this->hdl, ao_sndio_onmove_cb, this);

  if (!sio_start(this->hdl)) {
    xprintf (this->xine, XINE_VERBOSITY_DEBUG,
             "audio_sndio_out: ao_sndio_open could not start\n");
    goto bad;
  }

  return par.rate;

bad:
  if (this->hdl != NULL)
    sio_close(this->hdl);
  return 0;
}

static int ao_sndio_num_channels(ao_driver_t *this_gen)
{
  sndio_driver_t *this = (sndio_driver_t *) this_gen;

  return this->num_channels;
}

static int ao_sndio_bytes_per_frame(ao_driver_t *this_gen)
{
  sndio_driver_t *this = (sndio_driver_t *) this_gen;

  return this->bytes_per_frame;
}

static int ao_sndio_get_gap_tolerance (ao_driver_t *this_gen)
{
  return GAP_TOLERANCE;
}

static int ao_sndio_write(ao_driver_t *this_gen, int16_t *data,
                         uint32_t num_frames)
{
  sndio_driver_t *this = (sndio_driver_t *) this_gen;
  size_t ret, size = num_frames * this->bytes_per_frame;

  ret = sio_write(this->hdl, data, size);
  if (ret == 0)
    return 0;

  this->playpos += num_frames;

  return 1;
}

static int ao_sndio_delay (ao_driver_t *this_gen)
{
  sndio_driver_t *this = (sndio_driver_t *) this_gen;
  int bufused;

  if (this->realpos < 0)
    bufused = this->playpos;
  else
    bufused = this->playpos - this->realpos;

  return bufused;
}

static void ao_sndio_close(ao_driver_t *this_gen)
{
  sndio_driver_t *this = (sndio_driver_t *) this_gen;

  xprintf (this->xine, XINE_VERBOSITY_DEBUG,
           "audio_sndio_out: ao_sndio_close called\n");

  if (!sio_stop(this->hdl)) {
    xprintf (this->xine, XINE_VERBOSITY_DEBUG,
             "audio_sndio_out: ao_sndio_close could not stop\n");
  }

  sio_close(this->hdl);
  this->hdl = NULL;
}

static uint32_t ao_sndio_get_capabilities (ao_driver_t *this_gen)
{
  sndio_driver_t *this = (sndio_driver_t *) this_gen;

  return this->capabilities;
}

static void ao_sndio_exit(ao_driver_t *this_gen)
{
  sndio_driver_t *this = (sndio_driver_t *) this_gen;

  xprintf (this->xine, XINE_VERBOSITY_DEBUG,
           "audio_sndio_out: ao_sndio_exit called\n");

  if (this->hdl != NULL)
    sio_close(this->hdl);
}

static int ao_sndio_get_property (ao_driver_t *this_gen, int property)
{
  sndio_driver_t *this = (sndio_driver_t *) this_gen;

  switch (property) {
  case AO_PROP_MIXER_VOL:
    return this->mixer.volume;
    break;
  case AO_PROP_MUTE_VOL:
    return this->mixer.mute;
    break;
  }

  return 0;
}

static int ao_sndio_set_property (ao_driver_t *this_gen, int property, int value)
{
  sndio_driver_t *this = (sndio_driver_t *) this_gen;
  int vol;

  if (this->hdl == NULL)
    return 0;

  switch(property) {
  case AO_PROP_MIXER_VOL:
    this->mixer.volume = value;
    if (!this->mixer.mute)
      sio_setvol(this->hdl, PCT_TO_MIDI(this->mixer.volume));
    return this->mixer.volume;
    break;

  case AO_PROP_MUTE_VOL:
    this->mixer.mute = (value) ? 1 : 0;
    vol = 0;
    if (!this->mixer.mute)
      vol = PCT_TO_MIDI(this->mixer.volume);
    sio_setvol(this->hdl, vol);
    return value;
    break;
  }

  return value;
}

/*
 * pause, resume, flush buffers
 */
static int ao_sndio_ctrl(ao_driver_t *this_gen, int cmd, ...)
{
  sndio_driver_t *this = (sndio_driver_t *) this_gen;

  /*
   * sndio pauses automatically if there are no more samples to play
   * and resumes when there are samples again. So we leave this empty
   * for the moment.
   */

  return 0;
}

static ao_driver_t *open_plugin (audio_driver_class_t *class_gen, const void *data)
{
  sndio_class_t   *class = (sndio_class_t *) class_gen;
  sndio_driver_t  *this;

  lprintf ("audio_sndio_out: open_plugin called\n");

  this = calloc(1, sizeof (sndio_driver_t));
  if (!this)
    return NULL;

  this->xine = class->xine;

  /*
   * Set capabilities
   */
  this->capabilities = AO_CAP_MODE_MONO | AO_CAP_MODE_STEREO |
#if 0
    AO_CAP_MODE_4CHANNEL | AO_CAP_MODE_4_1CHANNEL |
    AO_CAP_MODE_5CHANNEL | AO_CAP_MODE_5_1CHANNEL |
#endif
    AO_CAP_MIXER_VOL | AO_CAP_MUTE_VOL | AO_CAP_8BITS |
    AO_CAP_16BITS;

  this->ao_driver.get_capabilities  = ao_sndio_get_capabilities;
  this->ao_driver.get_property      = ao_sndio_get_property;
  this->ao_driver.set_property      = ao_sndio_set_property;
  this->ao_driver.open              = ao_sndio_open;
  this->ao_driver.num_channels      = ao_sndio_num_channels;
  this->ao_driver.bytes_per_frame   = ao_sndio_bytes_per_frame;
  this->ao_driver.delay             = ao_sndio_delay;
  this->ao_driver.write             = ao_sndio_write;
  this->ao_driver.close             = ao_sndio_close;
  this->ao_driver.exit              = ao_sndio_exit;
  this->ao_driver.get_gap_tolerance = ao_sndio_get_gap_tolerance;
  this->ao_driver.control           = ao_sndio_ctrl;

  return &this->ao_driver;
}

/*
 * class functions
 */

static char* get_identifier (audio_driver_class_t *this_gen)
{
  return "sndio";
}

static char* get_description (audio_driver_class_t *this_gen)
{
  return _("xine audio output plugin using sndio audio devices/drivers ");
}

static void dispose_class (audio_driver_class_t *this_gen)
{
  sndio_class_t *this = (sndio_class_t *) this_gen;

  free(this);
}

static void *init_class (xine_t *xine, void *data)
{
  sndio_class_t        *this;

  lprintf ("audio_sndio_out: init class\n");

  this = calloc(1, sizeof (sndio_class_t));
  if (!this)
    return NULL;

  this->driver_class.open_plugin     = open_plugin;
  this->driver_class.get_identifier  = get_identifier;
  this->driver_class.get_description = get_description;
  this->driver_class.dispose         = dispose_class;

  this->xine = xine;

  return this;
}

static const ao_info_t ao_info_sndio = {
  12
};

/*
 * exported plugin catalog entry
 */

const plugin_info_t xine_plugin_info[] EXPORTED = {
  /* type, API, "name", version, special_info, init_function */
  { PLUGIN_AUDIO_OUT, 8, "sndio", XINE_VERSION_CODE, &ao_info_sndio, init_class },
  { PLUGIN_NONE, 0, "", 0, NULL, NULL }
};
