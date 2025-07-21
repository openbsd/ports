#include <string.h>
#include <gst/gst.h>
#include <sndio.h>
#include <stdio.h>
#include "gstsndio.h"
#include "sndiodevice.h"

G_DEFINE_TYPE (GstSndioDevice, gst_sndio_device, GST_TYPE_DEVICE);

GstDevice *
gst_sndio_device_new (const gchar *name, int mode)
{
  static GstStaticCaps sndio_caps = GST_STATIC_CAPS (GST_SNDIO_CAPS_STRING);
  GstSndioDevice *sndio_device;
  GstCaps *caps;
  GstStructure *props;
  const gchar *klass;

  klass = (mode == SIO_REC) ? "Audio/Source" : "Audio/Sink";

  caps = gst_static_caps_get (&sndio_caps);

  props = gst_structure_new ("sndio-proplist",
      "device.api", G_TYPE_STRING, "sndio",
      "device.class", G_TYPE_STRING, "sound",
      NULL);

  sndio_device = g_object_new (GST_TYPE_SNDIO_DEVICE,
      "display-name", name,
      "caps", caps,
      "device-class", klass,
      "properties", props,
      NULL);

  sndio_device->mode = mode;

  /* sndio_device owns 'caps' and 'props', so free ours */

  gst_structure_free (props);
  gst_caps_unref (caps);

  return GST_DEVICE (sndio_device);
}

static GstElement *
gst_sndio_device_create_element (GstDevice *device, const gchar *name)
{
  GstSndioDevice *sndio_device = GST_SNDIO_DEVICE (device);
  GstElement *element;
  const char *element_name;

  element_name = (sndio_device->mode == SIO_REC) ? "sndiosrc" : "sndiosink";

  element = gst_element_factory_make (element_name, name);
  g_object_set (element, "device", gst_device_get_display_name(device), NULL);

  return element;
}

static void
gst_sndio_device_finalize (GObject *object)
{
  G_OBJECT_CLASS (gst_sndio_device_parent_class)->finalize (object);
}

static void
gst_sndio_device_class_init (GstSndioDeviceClass *klass)
{
  GstDeviceClass *dev_class = GST_DEVICE_CLASS (klass);
  GObjectClass *object_class = G_OBJECT_CLASS (klass);

  dev_class->create_element = gst_sndio_device_create_element;
  object_class->finalize = gst_sndio_device_finalize;
}

static void
gst_sndio_device_init (GstSndioDevice *device)
{
}
