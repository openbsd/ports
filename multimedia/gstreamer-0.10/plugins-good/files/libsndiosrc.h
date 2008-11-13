/*
 * Copyright (C) <2008> Jacob Meuser <jakemsr@sdf.lonestar.org>
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
