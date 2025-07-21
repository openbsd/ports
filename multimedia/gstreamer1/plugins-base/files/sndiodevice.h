#ifndef __GST_SNDIODEVICE_H__
#define __GST_SNDIODEVICE_H__

#include <gst/gst.h>

G_BEGIN_DECLS

typedef struct _GstSndioDevice GstSndioDevice;
typedef struct _GstSndioDeviceClass GstSndioDeviceClass;

#define GST_TYPE_SNDIO_DEVICE \
	(gst_sndio_device_get_type())
#define GST_IS_SNDIO_DEVICE(obj) \
	(G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_SNDIO_DEVICE))
#define GST_IS_SNDIO_DEVICE_CLASS(klass) \
	(G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_SNDIO_DEVICE))
#define GST_SNDIO_DEVICE_GET_CLASS(obj) \
	(G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_SNDIO_DEVICE, GstSndioDeviceClass))
#define GST_SNDIO_DEVICE(obj) \
	(G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_SNDIO_DEVICE, GstSndioDevice))
#define GST_SNDIO_DEVICE_CLASS(klass) \
	(G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_DEVICE, GstSndioDeviceClass))
#define GST_SNDIO_DEVICE_CAST(obj) \
	((GstSndioDevice *)(obj))

struct _GstSndioDevice {
  GstDevice parent;
  int mode;
};

struct _GstSndioDeviceClass {
  GstDeviceClass parent_class;
};

GstDevice *gst_sndio_device_new (const gchar *, int);
GType gst_sndio_device_get_type (void);

G_END_DECLS

#endif
