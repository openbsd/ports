/* GStreamer
 * Copyright (C) <2008> Jacob Meuser <jakemsr@sdf.lonestar.org>
 *
 * libsndiosrc.h: libsndio audio source
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


#ifndef __GST_LIBSNDIOSRC_H__
#define __GST_LIBSNDIOSRC_H__

#include <sndio.h>

#include <gst/gst.h>
#include <gst/audio/gstaudiosrc.h>

G_BEGIN_DECLS

#define GST_TYPE_LIBSNDIOSRC \
  (gst_libsndiosrc_get_type())
#define GST_LIBSNDIOSRC(obj) \
  (G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_LIBSNDIOSRC,GstLibsndioSrc))
#define GST_LIBSNDIOSRC_CLASS(klass) \
  (G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_LIBSNDIOSRC,GstLibsndioSrcClass))
#define GST_IS_LIBSNDIOSRC(obj) \
  (G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_LIBSNDIOSRC))
#define GST_IS_LIBSNDIOSRC_CLASS(klass) \
  (G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_LIBSNDIOSRC))

typedef struct _GstLibsndioSrc GstLibsndioSrc;
typedef struct _GstLibsndioSrcClass GstLibsndioSrcClass;

struct _GstLibsndioSrc {
  GstAudioSrc   src;

  struct sio_hdl *hdl;
  gchar    *host;

  /* bytes per frame */
  int bpf;

  /* frames counts */
  volatile long long realpos;
  volatile long long readpos;
  volatile guint latency;

  GstCaps  *cur_caps;
};

struct _GstLibsndioSrcClass {
  GstAudioSrcClass parent_class;
};

GType gst_libsndiosrc_get_type (void);

G_END_DECLS

#endif /* __GST_LIBSNDIOSRC_H__ */
