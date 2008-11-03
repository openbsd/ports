/* GStreamer
 * Copyright (C) <2008> Jacob Meuser <jakemsr@sdf.lonestar.org>
 *
 * libsndiosink.h: libsndio audio sink
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this library; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */


#ifndef __GST_LIBSNDIOSINK_H__
#define __GST_LIBSNDIOSINK_H__

#include <sndio.h>

#include <gst/gst.h>
#include <gst/audio/gstaudiosink.h>

G_BEGIN_DECLS

#define GST_TYPE_LIBSNDIOSINK \
  (gst_libsndiosink_get_type())
#define GST_LIBSNDIOSINK(obj) \
  (G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_LIBSNDIOSINK,GstLibsndioSink))
#define GST_LIBSNDIOSINK_CLASS(klass) \
  (G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_LIBSNDIOSINK,GstLibsndioSinkClass))
#define GST_IS_LIBSNDIOSINK(obj) \
  (G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_LIBSNDIOSINK))
#define GST_IS_LIBSNDIOSINK_CLASS(klass) \
  (G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_LIBSNDIOSINK))

typedef struct _GstLibsndioSink GstLibsndioSink;
typedef struct _GstLibsndioSinkClass GstLibsndioSinkClass;

struct _GstLibsndioSink {
  GstAudioSink   sink;

  struct sio_hdl *hdl;
  gchar    *host;

  /* bytes per frame */
  int bpf;

  /* frames counts */
  volatile long long realpos;
  volatile long long playpos;
  volatile guint latency;

  GstCaps  *cur_caps;
};

struct _GstLibsndioSinkClass {
  GstAudioSinkClass parent_class;
};

GType gst_libsndiosink_get_type (void);

G_END_DECLS

#endif /* __GST_LIBSNDIOSINK_H__ */
