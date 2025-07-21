#include <string.h>
#include <gst/gst.h>
#include <sndio.h>
#include <stdio.h>
#include "sndiodeviceprovider.h"
#include "sndiodevice.h"

G_DEFINE_TYPE (GstSndioDeviceProvider, gst_sndio_device_provider, GST_TYPE_DEVICE_PROVIDER);

static GList *
gst_sndio_device_provider_probe (GstDeviceProvider *provider)
{
  GList *list = NULL;
  GstDevice *device;
  struct sio_hdl *hdl;

  /*
   * There's no way to discover all devices on the network, so
   * just return the default device. The user can point it to
   * any device.
   */

  device = gst_sndio_device_new (SIO_DEVANY, SIO_PLAY);
  if (device)
    list = g_list_prepend (list, device);

  device = gst_sndio_device_new (SIO_DEVANY, SIO_REC);
  if (device)
    list = g_list_prepend (list, device);

  return list;
}

static void
gst_sndio_device_provider_class_init (GstSndioDeviceProviderClass *klass)
{
  GstDeviceProviderClass *dm_class = GST_DEVICE_PROVIDER_CLASS (klass);

  dm_class->probe = gst_sndio_device_provider_probe;

  gst_device_provider_class_set_static_metadata (dm_class,
      "Sndio Device Provider", "Sink/Source/Audio",
      "List and provide sndio source and sink devices",
      "Alexandre Ratchov <alex@caoua.com>");
}

static void
gst_sndio_device_provider_init (GstSndioDeviceProvider *self)
{
}
