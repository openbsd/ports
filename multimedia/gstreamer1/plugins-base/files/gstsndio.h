/*
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
#ifndef __GST_SNDIO_H__
#define __GST_SNDIO_H__

#include <sndio.h>
#include <gst/gst.h>
#include <gst/audio/gstaudiosink.h>
#include <gst/audio/gstaudiosrc.h>
#include <gst/audio/streamvolume.h>

enum
{
  PROP_0,
  PROP_DEVICE,
  PROP_VOLUME,
  PROP_MUTE
};

#define GST_SNDIO_CAPS_STRING					\
	"audio/x-raw, "						\
        "format = (string) { "					\
		     "S8, U8, "					\
		     "S16LE, S16BE, U16LE, U16BE, "		\
		     "S32LE, S32BE, U32LE, U32BE, "		\
		     "S24_32LE, S24_32BE, U24_32LE, "		\
		     "U24_32BE, S24LE, S24BE, U24LE, U24BE "	\
	"}, "							\
        "layout = (string) interleaved, "			\
        "rate = (int) [ 8000, 192000 ], "			\
        "channels = (int) [1, 16]"

/*
 * data common to src and sink
 */
struct gstsndio {
    GMutex lock;	/* libsndio is not thread-safe: held around every sio_*() */
    struct sio_hdl *hdl;
    gchar *device;
    gint mode;
    gboolean started;	/* between sio_start() and sio_flush() */
    gboolean notify_volume; /* set by onvol, notified outside the lock */
    gint bpf;		/* bytes per frame */
    gint delay;		/* bytes stored in the audio fifo */
    guint volume;	/* volume level (SIO_MAXVOL scale), cached until open */
    gboolean mute;	/* mute state, independent of volume */
    gboolean volume_set; /* volume/mute set by the user: overrides sndiod's */
    gint volume_retry;	/* device disagrees with volume_set value: re-apply */
    gboolean eof;	/* device reported an error, don't post again */
    GstCaps *cur_caps;  /* saved capabilities of opened device */
    GObject *obj;	/* for logging */
    gboolean driver_timestamps;
};

#define GST_SNDIO_DELAY(s) ((s)->delay / (s)->bpf)

void gst_sndio_init (struct gstsndio *sio, GObject *obj);
void gst_sndio_finalize (struct gstsndio *sio);
GstCaps *gst_sndio_getcaps (struct gstsndio *sio, GstCaps * filter);
gboolean gst_sndio_open (struct gstsndio *sio, gint mode);
gboolean gst_sndio_close (struct gstsndio *sio);
gboolean gst_sndio_prepare (struct gstsndio *sio, GstAudioRingBufferSpec *spec);
gboolean gst_sndio_unprepare (struct gstsndio *sio);
gint gst_sndio_write (struct gstsndio *sio, gpointer data, guint length);
gint gst_sndio_read (struct gstsndio *sio, gpointer data, guint length);
void gst_sndio_pause (struct gstsndio *sio);
void gst_sndio_resume (struct gstsndio *sio);
void gst_sndio_set_property (struct gstsndio *sio, guint prop_id,
     const GValue * value, GParamSpec * pspec);
void gst_sndio_get_property (struct gstsndio *sio, guint prop_id,
     GValue * value,  GParamSpec * pspec);

#endif
