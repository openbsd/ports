/* GStreamer
 * Copyright (C) <2008> Jacob Meuser <jakemsr@sdf.lonestar.org>
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

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif
#include "libsndiosink.h"
#include "libsndiosrc.h"

#include "gst/gst-i18n-plugin.h"

GST_DEBUG_CATEGORY (libsndio_debug);

static gboolean
plugin_init (GstPlugin * plugin)
{
  if (!gst_element_register (plugin, "libsndiosrc", GST_RANK_PRIMARY,
          GST_TYPE_LIBSNDIOSRC) ||
      !gst_element_register (plugin, "libsndiosink", GST_RANK_PRIMARY,
          GST_TYPE_LIBSNDIOSINK)) {
    return FALSE;
  }

  GST_DEBUG_CATEGORY_INIT (libsndio_debug, "libsndio", 0, "libsndio elements");

#ifdef ENABLE_NLS
  setlocale (LC_ALL, "");
  bindtextdomain (GETTEXT_PACKAGE, LOCALEDIR);
#endif /* ENABLE_NLS */

  return TRUE;
}

GST_PLUGIN_DEFINE (GST_VERSION_MAJOR,
    GST_VERSION_MINOR,
    "libsndio",
    "libsndio support for GStreamer",
    plugin_init, VERSION, GST_LICENSE, GST_PACKAGE_NAME, GST_PACKAGE_ORIGIN)
