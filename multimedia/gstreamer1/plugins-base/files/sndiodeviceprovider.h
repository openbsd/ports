#ifndef __GST_SNDIODEVICEPROVIDER_H__
#define __GST_SNDIODEVICEPROVIDER_H__

#include <gst/gst.h>

G_BEGIN_DECLS

typedef struct _GstSndioDeviceProvider GstSndioDeviceProvider;
typedef struct _GstSndioDeviceProviderClass GstSndioDeviceProviderClass;

#define GST_TYPE_SNDIO_DEVICE_PROVIDER \
	(gst_sndio_device_provider_get_type())
#define GST_IS_SNDIO_DEVICE_PROVIDER(obj) \
	(G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_SNDIO_DEVICE_PROVIDER))
#define GST_IS_SNDIO_DEVICE_PROVIDER_CLASS(klass) \
	(G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_SNDIO_DEVICE_PROVIDER))
#define GST_SNDIO_DEVICE_PROVIDER_GET_CLASS(obj) \
	(G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_SNDIO_DEVICE_PROVIDER, GstSndioDeviceProviderClass))
#define GST_SNDIO_DEVICE_PROVIDER(obj) \
	(G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_SNDIO_DEVICE_PROVIDER, GstSndioDeviceProvider))
#define GST_SNDIO_DEVICE_PROVIDER_CLASS(klass) \
	(G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_DEVICE_PROVIDER, GstSndioDeviceProviderClass))
#define GST_SNDIO_DEVICE_PROVIDER_CAST(obj) \
	((GstSndioDeviceProvider *)(obj))

struct _GstSndioDeviceProvider {
  GstDeviceProvider parent;
};

struct _GstSndioDeviceProviderClass {
  GstDeviceProviderClass parent_class;
};

GType gst_sndio_device_provider_get_type (void);

G_END_DECLS

#endif
