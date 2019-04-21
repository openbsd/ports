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

/**
 * SECTION:element-sndiosrc
 * @see_also: #GstAutoAudioSrc
 *
 * <refsect2>
 * <para>
 * This element retrieves samples from a sound card using sndio.
 * </para>
 * <para>
 * Simple example pipeline that records an Ogg/Vorbis file via sndio:
 * <programlisting>
 * gst-launch -v sndiosrc ! audioconvert ! vorbisenc ! oggmux ! filesink location=foo.ogg 
 * </programlisting>
 * </para>
 * </refsect2>
 */

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include "sndiosrc.h"
#include "gstsndio.h"

GST_DEBUG_CATEGORY_EXTERN (gst_sndio_debug);
#define GST_CAT_DEFAULT gst_sndio_debug

#define gst_sndiosrc_parent_class parent_class
G_DEFINE_TYPE_WITH_CODE (GstSndioSrc, gst_sndiosrc, GST_TYPE_AUDIO_SRC,
	G_IMPLEMENT_INTERFACE (GST_TYPE_STREAM_VOLUME, NULL));

static void gst_sndiosrc_finalize (GObject * object);
static GstCaps *gst_sndiosrc_getcaps (GstBaseSrc * bsrc, GstCaps * filter);
static gboolean gst_sndiosrc_open (GstAudioSrc * asrc);
static gboolean gst_sndiosrc_close (GstAudioSrc * asrc);
static gboolean gst_sndiosrc_prepare (GstAudioSrc * asrc,
    GstAudioRingBufferSpec * spec);
static gboolean gst_sndiosrc_unprepare (GstAudioSrc * asrc);
static guint gst_sndiosrc_read (GstAudioSrc * asrc, gpointer data,
    guint length, GstClockTime * timestamp);
static guint gst_sndiosrc_delay (GstAudioSrc * asrc);
static void gst_sndiosrc_reset (GstAudioSrc * asrc);
static void gst_sndiosrc_set_property (GObject * object, guint prop_id,
    const GValue * value, GParamSpec * pspec);
static void gst_sndiosrc_get_property (GObject * object,
    guint prop_id, GValue * value, GParamSpec * pspec);

static GstStaticPadTemplate sndiosrc_factory =
    GST_STATIC_PAD_TEMPLATE ("src",
	GST_PAD_SRC,
	GST_PAD_ALWAYS,
	GST_STATIC_CAPS (GST_SNDIO_CAPS_STRING)
    );

static void
gst_sndiosrc_init (GstSndioSrc * src)
{
  gst_sndio_init (&src->sndio, G_OBJECT(src));
  /* XXX not implemented */
  src->sndio.driver_timestamps = FALSE;
}

static void
gst_sndiosrc_finalize (GObject * object)
{
  GstSndioSrc *src = GST_SNDIOSRC (object);

  gst_sndio_finalize (&src->sndio);
  G_OBJECT_CLASS (parent_class)->finalize (object);
}

static GstCaps *
gst_sndiosrc_getcaps (GstBaseSrc * bsrc, GstCaps * filter)
{
  GstSndioSrc *src = GST_SNDIOSRC (bsrc);

  return gst_sndio_getcaps (&src->sndio, filter);
}

static gboolean
gst_sndiosrc_open (GstAudioSrc * asrc)
{
  GstSndioSrc *src = GST_SNDIOSRC (asrc);

  return gst_sndio_open (&src->sndio, SIO_REC);
}

static gboolean
gst_sndiosrc_close (GstAudioSrc * asrc)
{
  GstSndioSrc *src = GST_SNDIOSRC (asrc);

  return gst_sndio_close (&src->sndio);
}

static gboolean
gst_sndiosrc_prepare (GstAudioSrc * asrc, GstAudioRingBufferSpec * spec)
{
  GstSndioSrc *src = GST_SNDIOSRC (asrc);

  return gst_sndio_prepare (&src->sndio, spec);
}

static gboolean
gst_sndiosrc_unprepare (GstAudioSrc * asrc)
{
  GstSndioSrc *src = GST_SNDIOSRC (asrc);

  return gst_sndio_unprepare (&src->sndio);
}

static guint
gst_sndiosrc_read (GstAudioSrc * asrc, gpointer data, guint length,
    GstClockTime * timestamp)
{
  GstSndioSrc *src = GST_SNDIOSRC (asrc);
  guint done;

  if (length == 0)
    return 0;
  done = sio_read (src->sndio.hdl, data, length);
  if (done == 0) {
      GST_ELEMENT_ERROR (src, RESOURCE, READ,
	("Failed to read data from sndio"), (NULL));
      return 0;
  }
  src->sndio.delay -= done;
  return done;
}

static guint
gst_sndiosrc_delay (GstAudioSrc * asrc)
{
  GstSndioSrc *src = GST_SNDIOSRC (asrc);

  return GST_SNDIO_DELAY(&src->sndio);
}

static void
gst_sndiosrc_reset (GstAudioSrc * asrc)
{
}

static void
gst_sndiosrc_set_property (GObject * object, guint prop_id,
    const GValue * value, GParamSpec * pspec)
{
  GstSndioSrc *src = GST_SNDIOSRC (object);

  gst_sndio_set_property (&src->sndio, prop_id, value, pspec);
}

static void
gst_sndiosrc_get_property (GObject * object, guint prop_id, GValue * value,
    GParamSpec * pspec)
{
  GstSndioSrc *src = GST_SNDIOSRC (object);

  gst_sndio_get_property (&src->sndio, prop_id, value, pspec);
}

static void
gst_sndiosrc_class_init (GstSndioSrcClass * klass)
{
  GObjectClass *gobject_class;
  GstElementClass *gstelement_class;
  GstBaseSrcClass *gstbasesrc_class;
  GstAudioBaseSrcClass *gstbaseaudiosrc_class;
  GstAudioSrcClass *gstaudiosrc_class;
  gobject_class = (GObjectClass *) klass;
  gstelement_class = (GstElementClass *) klass;
  gstbasesrc_class = (GstBaseSrcClass *) klass;
  gstbaseaudiosrc_class = (GstAudioBaseSrcClass *) klass;
  gstaudiosrc_class = (GstAudioSrcClass *) klass;

  parent_class = g_type_class_peek_parent (klass);

  gobject_class->finalize = gst_sndiosrc_finalize;
  gobject_class->get_property = gst_sndiosrc_get_property;
  gobject_class->set_property = gst_sndiosrc_set_property;

  gst_element_class_set_static_metadata (gstelement_class,
      "Audio src (sndio)", "Src/Audio",
      "Input from a sound card via sndio",
      "Jacob Meuser <jakemsr@sdf.lonestar.org>");

  gst_element_class_add_pad_template (gstelement_class,
      gst_static_pad_template_get (&sndiosrc_factory));

  gstbasesrc_class->get_caps = GST_DEBUG_FUNCPTR (gst_sndiosrc_getcaps);
  gstaudiosrc_class->open = GST_DEBUG_FUNCPTR (gst_sndiosrc_open);
  gstaudiosrc_class->prepare = GST_DEBUG_FUNCPTR (gst_sndiosrc_prepare);
  gstaudiosrc_class->unprepare = GST_DEBUG_FUNCPTR (gst_sndiosrc_unprepare);
  gstaudiosrc_class->close = GST_DEBUG_FUNCPTR (gst_sndiosrc_close);
  gstaudiosrc_class->read = GST_DEBUG_FUNCPTR (gst_sndiosrc_read);
  gstaudiosrc_class->delay = GST_DEBUG_FUNCPTR (gst_sndiosrc_delay);
  gstaudiosrc_class->reset = GST_DEBUG_FUNCPTR (gst_sndiosrc_reset);

  g_object_class_install_property (gobject_class, PROP_DEVICE,
      g_param_spec_string ("device", "Device",
          "sndio device as defined in sndio(7)",
          SIO_DEVANY, G_PARAM_READWRITE | G_PARAM_STATIC_STRINGS));
  g_object_class_install_property (gobject_class, PROP_VOLUME,
      g_param_spec_double ("volume", "Volume",
	  "Linear volume of this stream, 1.0=100%", 0.0, 1.0,
	  1.0, G_PARAM_READWRITE | G_PARAM_STATIC_STRINGS));
  g_object_class_install_property (gobject_class, PROP_MUTE,
      g_param_spec_boolean ("mute", "Mute",
	  "Mute state of this stream", FALSE,
	  G_PARAM_READWRITE | G_PARAM_STATIC_STRINGS));
}
