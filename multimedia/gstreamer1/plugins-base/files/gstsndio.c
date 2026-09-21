/*
 * Copyright (C) 2008 Jacob Meuser <jakemsr@sdf.lonestar.org>
 * Copyright (C) 2012 Alexandre Ratchov <alex@caoua.org>
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
#endif

#include <stdio.h>
#include "gstsndio.h"
#include "sndiodeviceprovider.h"

GST_DEBUG_CATEGORY (gst_sndio_debug);
#define GST_CAT_DEFAULT gst_sndio_debug

GType gst_sndiosink_get_type (void);
GType gst_sndiosrc_get_type (void);

static gboolean
plugin_init (GstPlugin * plugin)
{
  GST_DEBUG_CATEGORY_INIT (gst_sndio_debug, "sndio", 0, "sndio plugins");

  /* prefer sndiosrc over pulsesrc (GST_RANK_PRIMARY + 10) */
  if (!gst_element_register (plugin, "sndiosrc", GST_RANK_PRIMARY + 20,
          gst_sndiosrc_get_type()))
    return FALSE;
  /* prefer sndiosink over pulsesink (GST_RANK_PRIMARY + 10) */
  if (!gst_element_register (plugin, "sndiosink", GST_RANK_PRIMARY + 20,
          gst_sndiosink_get_type()))
    return FALSE;
  if (!gst_device_provider_register (plugin, "sndiodeviceprovider", GST_RANK_PRIMARY + 20,
          gst_sndio_device_provider_get_type()))
    return FALSE;
  return TRUE;
}

GST_PLUGIN_DEFINE (GST_VERSION_MAJOR,
    GST_VERSION_MINOR,
    sndio,
    "sndio plugin library",
    plugin_init, VERSION, GST_LICENSE, GST_PACKAGE_NAME, GST_PACKAGE_ORIGIN)

/*
 * common code to src and sink
 */

void
gst_sndio_init (struct gstsndio *sio, GObject *obj)
{
  g_mutex_init (&sio->lock);
  sio->obj = obj;
  sio->hdl = NULL;
  sio->started = FALSE;
  sio->notify_volume = FALSE;
  sio->device = g_strdup (SIO_DEVANY);
  sio->volume = SIO_MAXVOL;
  sio->mute = FALSE;
  sio->volume_set = FALSE;
  sio->volume_retry = 0;
  sio->eof = FALSE;
  /* XXX not implemented; only used for src, not sink */
  // sio->driver_timestamps = FALSE;
}

#define GST_SNDIO_VOLUME_RETRIES 3

static inline unsigned int
gst_sndio_wanted_volume (struct gstsndio *sio)
{
  return sio->mute ? 0 : sio->volume;
}

/* lock held */
static void
gst_sndio_apply_volume (struct gstsndio *sio)
{
  if (sio->hdl == NULL || sio->eof)
    return;
  sio_setvol (sio->hdl, gst_sndio_wanted_volume (sio));
}

void
gst_sndio_finalize (struct gstsndio *sio)
{
  gst_caps_replace (&sio->cur_caps, NULL);
  g_free (sio->device);
  g_mutex_clear (&sio->lock);
}

/* g_object_notify() may re-enter set_property(): call with lock released */
static void
gst_sndio_emit_notify (struct gstsndio *sio)
{
  if (sio->notify_volume) {
    sio->notify_volume = FALSE;
    g_object_notify (G_OBJECT (sio->obj), "volume");
  }
}

/* lock held */
static void
gst_sndio_reapply_volume (struct gstsndio *sio)
{
  if (!sio->volume_set || sio->volume_retry == 0)
    return;
  GST_DEBUG_OBJECT (sio->obj, "re-applying volume %u (attempt %d)",
      gst_sndio_wanted_volume (sio), sio->volume_retry);
  gst_sndio_apply_volume (sio);
}

/* lock held; on failure the caller posts the error after unlocking */
static gboolean
gst_sndio_do_start (struct gstsndio *sio)
{
  if (sio->started)
    return TRUE;
  sio->delay = 0;
  if (!sio_start (sio->hdl)) {
    sio->eof = TRUE;
    return FALSE;
  }
  sio->started = TRUE;
  return TRUE;
}

/* lock held; sio_flush() discards, sio_stop() would drain */
static void
gst_sndio_do_flush (struct gstsndio *sio)
{
  if (!sio->started)
    return;
  if (!sio_flush (sio->hdl)) {
    sio->eof = TRUE;
    GST_WARNING_OBJECT (sio->obj, "sio_flush failed");
  }
  sio->started = FALSE;
  sio->delay = 0;
}

GstCaps *
gst_sndio_getcaps (struct gstsndio *sio, GstCaps * filter)
{
  if (sio->cur_caps == NULL) {
    /* XXX */
    GST_LOG_OBJECT (sio->obj, "getcaps called, returning template caps");
    return NULL;
  }

  GST_LOG_OBJECT (sio->obj, "returning %" GST_PTR_FORMAT, sio->cur_caps);

  if (filter) {
    return gst_caps_intersect_full (filter,
      sio->cur_caps, GST_CAPS_INTERSECT_FIRST);
  } else {
    return gst_caps_ref (sio->cur_caps);
  }
}

static void
gst_sndio_onvol (void *arg, unsigned int vol)
{
  struct gstsndio *sio = arg;

  /*
   * sndiod pushes the volume it remembers for this application on
   * connect, and libsndio overwrites a pending sio_setvol() with it.
   * The user's property wins: re-apply from write()/read().
   */
  if (sio->volume_set) {
    if (vol == gst_sndio_wanted_volume (sio)) {
      sio->volume_retry = 0;
      return;
    }
    if (sio->volume_retry < GST_SNDIO_VOLUME_RETRIES) {
      sio->volume_retry++;
      return;
    }
    GST_WARNING_OBJECT (sio->obj, "device keeps volume %u, wanted %u",
	vol, gst_sndio_wanted_volume (sio));
    sio->volume_set = FALSE;
    sio->volume_retry = 0;
  }

  /* muted: device reports 0, keep the volume for unmute */
  if (sio->mute)
    return;
  if (sio->volume == vol)
    return;
  sio->volume = vol;
  sio->notify_volume = TRUE;
}

gboolean
gst_sndio_open (struct gstsndio *sio, gint mode)
{
  GValue list = G_VALUE_INIT, item = G_VALUE_INIT;
  GstStructure *s;
  GstCaps *caps;
  GstPadTemplate *templ;
  struct sio_enc *enc;
  struct sio_cap cap;
  char fmt[16];
  int i, chan;

  GST_DEBUG_OBJECT (sio->obj, "open");

  g_mutex_lock (&sio->lock);
  sio->hdl = sio_open (sio->device, mode, 0);
  if (sio->hdl == NULL) {
    g_mutex_unlock (&sio->lock);
    GST_ELEMENT_ERROR (sio->obj, RESOURCE, OPEN_READ_WRITE,
	("Couldn't open sndio device"), (NULL));
    return FALSE;
  }
  sio->mode = mode;
  sio->eof = FALSE;
  sio->started = FALSE;
  sio->volume_retry = 0;

  if (!sio_getcap(sio->hdl, &cap)) {
    sio_close(sio->hdl);
    sio->hdl = NULL;
    g_mutex_unlock (&sio->lock);
    GST_ELEMENT_ERROR (sio->obj, RESOURCE, OPEN_READ_WRITE,
	("Couldn't get device capabilities"), (NULL));
    return FALSE;
  }
  if (cap.nconf == 0) {
    sio_close(sio->hdl);
    sio->hdl = NULL;
    g_mutex_unlock (&sio->lock);
    GST_ELEMENT_ERROR (sio->obj, RESOURCE, OPEN_READ_WRITE,
	("Device has empty capabilities"), (NULL));
    return FALSE;
  }
  sio_onvol (sio->hdl, gst_sndio_onvol, sio);
  gst_sndio_apply_volume (sio);
  g_mutex_unlock (&sio->lock);
  gst_sndio_emit_notify (sio);

  caps = gst_caps_new_empty ();
  s = gst_structure_new ("audio/x-raw", (char *)NULL, (void *)NULL);

  /*
   * scan supported rates
   */
  g_value_init (&list, GST_TYPE_LIST);
  g_value_init (&item, G_TYPE_INT);
  for (i = 0; i < SIO_NRATE; i++) {
      if ((cap.confs[0].rate & (1 << i)) == 0)
	  continue;
      g_value_set_int(&item, cap.rate[i]);
      gst_value_list_append_value (&list, &item);
  }
  gst_structure_set_value (s, "rate", &list);
  g_value_unset (&item);
  g_value_unset (&list);

  /*
   * scan supported channels
   */
  g_value_init (&list, GST_TYPE_LIST);
  g_value_init (&item, G_TYPE_INT);
  chan = (mode == SIO_PLAY) ? cap.confs[0].pchan : cap.confs[0].rchan;
  for (i = 0; i < SIO_NCHAN; i++) {
      if ((chan & (1 << i)) == 0)
	  continue;
      g_value_set_int(&item, (mode == SIO_PLAY) ? cap.pchan[i] : cap.rchan[i]);
      gst_value_list_append_value (&list, &item);
  }
  gst_structure_set_value (s, "channels", &list);
  g_value_unset (&item);
  g_value_unset (&list);

  /*
   * scan supported encodings
   */
  g_value_init (&list, GST_TYPE_LIST);
  g_value_init (&item, G_TYPE_STRING);
  for (i = 0; i < SIO_NENC; i++) {
      if ((cap.confs[0].enc & (1 << i)) == 0)
	  continue;
      enc = cap.enc + i;
      if (enc->bits % 8 != 0)
	  continue;
      if (enc->bits < enc->bps * 8 && enc->msb)
	  continue;
      if (enc->bits == enc->bps * 8) {
	  snprintf(fmt, sizeof(fmt), "%s%u%s",
		   enc->sig ? "S" : "U",
		   enc->bits,
		   enc->bps > 1 ? (enc->le ? "LE" : "BE") : "");
      } else {
	  snprintf(fmt, sizeof(fmt), "%s%u_%u%s",
		   enc->sig ? "S" : "U",
		   enc->bits,
		   enc->bps * 8,
		   enc->bps > 1 ? (enc->le ? "LE" : "BE") : "");
      }
      g_value_set_string(&item, fmt);
      gst_value_list_append_value (&list, &item);
  }
  gst_structure_set_value (s, "format", &list);
  g_value_unset (&item);
  g_value_unset (&list);

  /*
   * add the only supported layout: interleaved
   */
  g_value_init (&item, G_TYPE_STRING);
  g_value_set_string(&item, "interleaved");
  gst_structure_set_value (s, "layout", &item);
  g_value_unset (&item);

  gst_caps_append_structure (caps, s);

  /* restrict to the pad template, as alsasink does */
  templ = gst_element_class_get_pad_template (GST_ELEMENT_GET_CLASS (sio->obj),
      mode == SIO_PLAY ? "sink" : "src");
  if (templ) {
    GstCaps *tcaps = gst_pad_template_get_caps (templ);
    GstCaps *icaps = gst_caps_intersect (caps, tcaps);
    gst_caps_unref (tcaps);
    gst_caps_unref (caps);
    caps = icaps;
  }
  gst_caps_replace (&sio->cur_caps, caps);
  gst_caps_unref (caps);
  GST_DEBUG_OBJECT (sio->obj, "caps are %" GST_PTR_FORMAT, sio->cur_caps);
  return TRUE;
}

gboolean
gst_sndio_close (struct gstsndio *sio)
{
  GST_DEBUG_OBJECT (sio->obj, "close");

  gst_caps_replace (&sio->cur_caps, NULL);
  g_mutex_lock (&sio->lock);
  if (sio->hdl)
    sio_close (sio->hdl);
  sio->hdl = NULL;
  sio->started = FALSE;
  g_mutex_unlock (&sio->lock);
  return TRUE;
}

static void
gst_sndio_cb (void *addr, int delta)
{
  struct gstsndio *sio = addr;

  delta *= sio->bpf;
  if (sio->mode == SIO_PLAY)
      sio->delay -= delta;
  else
      sio->delay += delta;
}

gboolean
gst_sndio_prepare (struct gstsndio *sio, GstAudioRingBufferSpec *spec)
{
  struct sio_par par, retpar;
  unsigned nchannels;

  GST_DEBUG_OBJECT (sio->obj, "prepare");

  if (spec->type != GST_AUDIO_RING_BUFFER_FORMAT_TYPE_RAW) {
      GST_ELEMENT_ERROR (sio->obj, RESOURCE, OPEN_READ_WRITE,
	("Only raw buffer format supported by sndio"), (NULL));
      return FALSE;
  }
  if (!GST_AUDIO_INFO_IS_INTEGER(&spec->info)) {
      GST_ELEMENT_ERROR (sio->obj, RESOURCE, OPEN_READ_WRITE,
	("Only integer format supported"), (NULL));
      return FALSE;
  }
  if (GST_AUDIO_INFO_DEPTH(&spec->info) % 8) {
      GST_ELEMENT_ERROR (sio->obj, RESOURCE, OPEN_READ_WRITE,
	("Only depths multiple of 8 are supported"), (NULL));
      return FALSE;
  }

  sio_initpar (&par);
  switch (GST_AUDIO_INFO_FORMAT (&spec->info)) {
  case GST_AUDIO_FORMAT_S8:
  case GST_AUDIO_FORMAT_U8:
  case GST_AUDIO_FORMAT_S16LE:
  case GST_AUDIO_FORMAT_S16BE:
  case GST_AUDIO_FORMAT_U16LE:
  case GST_AUDIO_FORMAT_U16BE:
  case GST_AUDIO_FORMAT_S32LE:
  case GST_AUDIO_FORMAT_S32BE:
  case GST_AUDIO_FORMAT_U32LE:
  case GST_AUDIO_FORMAT_U32BE:
  case GST_AUDIO_FORMAT_S24_32LE:
  case GST_AUDIO_FORMAT_S24_32BE:
  case GST_AUDIO_FORMAT_U24_32LE:
  case GST_AUDIO_FORMAT_U24_32BE:
  case GST_AUDIO_FORMAT_S24LE:
  case GST_AUDIO_FORMAT_S24BE:
  case GST_AUDIO_FORMAT_U24LE:
  case GST_AUDIO_FORMAT_U24BE:
      break;
  default:
      GST_ELEMENT_ERROR (sio->obj, RESOURCE, OPEN_READ_WRITE,
	  ("Unsupported audio format"),
	  ("format = %d", GST_AUDIO_INFO_FORMAT (&spec->info)));
      return FALSE;
  }
  par.sig = GST_AUDIO_INFO_IS_SIGNED(&spec->info);
  par.bits = GST_AUDIO_INFO_WIDTH(&spec->info);
  par.bps = GST_AUDIO_INFO_DEPTH(&spec->info) / 8;
  if (par.bps > 1)
      par.le = GST_AUDIO_INFO_IS_LITTLE_ENDIAN(&spec->info);
  if (par.bits < par.bps * 8)
      par.msb = 0;
  par.rate = GST_AUDIO_INFO_RATE(&spec->info);
  if (sio->mode == SIO_PLAY)
      par.pchan = GST_AUDIO_INFO_CHANNELS(&spec->info);
  else
      par.rchan = GST_AUDIO_INFO_CHANNELS(&spec->info);
  par.round = par.rate / 1000000. * spec->latency_time;
  par.appbufsz = par.rate / 1000000. * spec->buffer_time;

  g_mutex_lock (&sio->lock);
  if (!sio_setpar (sio->hdl, &par)) {
      g_mutex_unlock (&sio->lock);
      GST_ELEMENT_ERROR (sio->obj, RESOURCE, OPEN_WRITE,
	("Unsupported audio encoding"), (NULL));
      return FALSE;
  }
  if (!sio_getpar (sio->hdl, &retpar)) {
      g_mutex_unlock (&sio->lock);
      GST_ELEMENT_ERROR (sio->obj, RESOURCE, OPEN_WRITE,
	("Couldn't get audio device parameters"), (NULL));
      return FALSE;
  }
  g_mutex_unlock (&sio->lock);
#if 0
  GST_DEBUG ("format = %s, "
         "requested: sig = %d, bits = %d, bps = %d, le = %d, msb = %d, "
	 "rate = %d, pchan = %d, round = %d, appbufsz = %d; "
	 "returned: sig = %d, bits = %d, bps = %d, le = %d, msb = %d, "
	 "rate = %d, pchan = %d, round = %d, appbufsz = %d, bufsz = %d",
	 GST_AUDIO_INFO_NAME(&spec->info),
	 par.sig, par.bits, par.bps, par.le, par.msb,
	 par.rate, par.pchan, par.round, par.appbufsz,
	 retpar.sig, retpar.bits, retpar.bps, retpar.le, retpar.msb,
	 retpar.rate, retpar.pchan, retpar.round, retpar.appbufsz, retpar.bufsz);
#endif
  if (par.bits != retpar.bits ||
      par.bps != retpar.bps ||
      par.rate != retpar.rate ||
      (sio->mode == SIO_PLAY && par.pchan != retpar.pchan) ||
      (sio->mode == SIO_REC && par.rchan != retpar.rchan) ||
      (par.bps > 1 && par.le != retpar.le) ||
      (par.bits < par.bps * 8 && par.msb != retpar.msb)) {
      GST_ELEMENT_ERROR (sio->obj, RESOURCE, OPEN_WRITE,
	("Audio device refused requested parameters"), (NULL));
      return FALSE;
  }

  nchannels = (sio->mode == SIO_PLAY) ? retpar.pchan : retpar.rchan;
  spec->segsize = retpar.round * retpar.bps * nchannels;
  spec->segtotal = retpar.bufsz / retpar.round;
  sio->bpf = retpar.bps * nchannels;
  sio->delay = 0;
  g_mutex_lock (&sio->lock);
  sio_onmove (sio->hdl, gst_sndio_cb, sio);
  g_mutex_unlock (&sio->lock);

  /* started by the first write()/read() */
  return TRUE;
}

gboolean
gst_sndio_unprepare (struct gstsndio *sio)
{
  g_mutex_lock (&sio->lock);
  if (sio->hdl)
    gst_sndio_do_flush (sio);
  g_mutex_unlock (&sio->lock);
  return TRUE;
}

/*
 * Device is started on first use; the error is posted once and the
 * segment skipped (as alsasink), further calls fail silently.
 */
gint
gst_sndio_write (struct gstsndio *sio, gpointer data, guint length)
{
  gint done;

  if (length == 0)
    return 0;

  g_mutex_lock (&sio->lock);
  if (sio->eof) {
    g_mutex_unlock (&sio->lock);
    return length;
  }
  if (!gst_sndio_do_start (sio)) {
    g_mutex_unlock (&sio->lock);
    GST_ELEMENT_ERROR (sio->obj, RESOURCE, OPEN_WRITE,
	("Could not start sndio"), (NULL));
    return length;
  }
  done = sio_write (sio->hdl, data, length);
  if (done == 0) {
    sio->eof = TRUE;
    g_mutex_unlock (&sio->lock);
    GST_ELEMENT_ERROR (sio->obj, RESOURCE, WRITE,
	("Failed to write data to sndio"), (NULL));
    return length;
  }
  sio->delay += done;
  gst_sndio_reapply_volume (sio);
  g_mutex_unlock (&sio->lock);
  gst_sndio_emit_notify (sio);
  return done;
}

gint
gst_sndio_read (struct gstsndio *sio, gpointer data, guint length)
{
  gint done;

  if (length == 0)
    return 0;

  g_mutex_lock (&sio->lock);
  if (sio->eof) {
    g_mutex_unlock (&sio->lock);
    return -1;
  }
  if (!gst_sndio_do_start (sio)) {
    g_mutex_unlock (&sio->lock);
    GST_ELEMENT_ERROR (sio->obj, RESOURCE, OPEN_READ,
	("Could not start sndio"), (NULL));
    return -1;
  }
  done = sio_read (sio->hdl, data, length);
  if (done == 0) {
    sio->eof = TRUE;
    g_mutex_unlock (&sio->lock);
    GST_ELEMENT_ERROR (sio->obj, RESOURCE, READ,
	("Failed to read data from sndio"), (NULL));
    return -1;
  }
  sio->delay -= done;
  gst_sndio_reapply_volume (sio);
  g_mutex_unlock (&sio->lock);
  gst_sndio_emit_notify (sio);
  return done;
}

/* pause/stop/reset; waits for a blocking sio_write() to return: one round */
void
gst_sndio_pause (struct gstsndio *sio)
{
  GST_DEBUG_OBJECT (sio->obj, "pause (flush)");
  g_mutex_lock (&sio->lock);
  if (sio->hdl && !sio->eof)
    gst_sndio_do_flush (sio);
  g_mutex_unlock (&sio->lock);
}

void
gst_sndio_resume (struct gstsndio *sio)
{
  gboolean ok = TRUE;

  GST_DEBUG_OBJECT (sio->obj, "resume");
  g_mutex_lock (&sio->lock);
  if (sio->hdl && !sio->eof)
    ok = gst_sndio_do_start (sio);
  g_mutex_unlock (&sio->lock);
  if (!ok)
    GST_ELEMENT_ERROR (sio->obj, RESOURCE, OPEN_READ_WRITE,
	("Could not start sndio"), (NULL));
}

void
gst_sndio_set_property (struct gstsndio *sio, guint prop_id,
    const GValue * value, GParamSpec * pspec)
{
  switch (prop_id) {
    case PROP_DEVICE:
      g_free (sio->device);
      sio->device = g_value_dup_string (value);
      break;
    case PROP_VOLUME:
      g_mutex_lock (&sio->lock);
      sio->volume = g_value_get_double (value) * SIO_MAXVOL + 0.5;
      sio->volume_set = TRUE;
      sio->volume_retry = 0;
      gst_sndio_apply_volume (sio);
      g_mutex_unlock (&sio->lock);
      gst_sndio_emit_notify (sio);
      break;
    case PROP_MUTE:
      g_mutex_lock (&sio->lock);
      sio->mute = g_value_get_boolean (value);
      sio->volume_set = TRUE;
      sio->volume_retry = 0;
      gst_sndio_apply_volume (sio);
      g_mutex_unlock (&sio->lock);
      gst_sndio_emit_notify (sio);
      break;
    default:
      G_OBJECT_WARN_INVALID_PROPERTY_ID (sio->obj, prop_id, pspec);
  }
}

void
gst_sndio_get_property (struct gstsndio *sio, guint prop_id,
    GValue * value,  GParamSpec * pspec)
{
  switch (prop_id) {
    case PROP_DEVICE:
      g_value_set_string (value, sio->device);
      break;
    case PROP_VOLUME:
      g_value_set_double (value, (gdouble)sio->volume / SIO_MAXVOL);
      break;
    case PROP_MUTE:
      g_value_set_boolean (value, sio->mute);
      break;
    default:
      G_OBJECT_WARN_INVALID_PROPERTY_ID (sio->obj, prop_id, pspec);
  }
}
