/*	$OpenBSD: openbsd_ugen.c,v 1.3 2011/11/18 15:18:50 mpi Exp $	*/
/*
 * Copyright (c) 2011 Martin Pieuchot <mpi@openbsd.org>
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

#include <sys/time.h>
#include <sys/types.h>

#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include <dev/usb/usb.h>

#include "libusb.h"
#include "libusbi.h"

struct device_priv {
	char devnode[16];
	int fd;

	unsigned char *cdesc;			/* active config descriptor */
	usb_device_descriptor_t ddesc;		/* usb device descriptor */
};

struct handle_priv {
	int pipe[2];				/* for event notification */
	int endpoints[USB_MAX_ENDPOINTS];
};

/*
 * Backend functions
 */
int ugen_get_device_list(struct libusb_context *, struct discovered_devs **);
int ugen_open(struct libusb_device_handle *);
void ugen_close(struct libusb_device_handle *);

int ugen_get_device_descriptor(struct libusb_device *, unsigned char *, int *);
int ugen_get_active_config_descriptor(struct libusb_device *, unsigned char *,
    size_t, int *);
int ugen_get_config_descriptor(struct libusb_device *, uint8_t, unsigned char *,
    size_t, int *);

int ugen_get_configuration(struct libusb_device_handle *, int *);
int ugen_set_configuration(struct libusb_device_handle *, int);

int ugen_claim_interface(struct libusb_device_handle *, int);
int ugen_release_interface(struct libusb_device_handle *, int);

int ugen_set_interface_altsetting(struct libusb_device_handle *, int, int);
int ugen_clear_halt(struct libusb_device_handle *, unsigned char);
int ugen_reset_device(struct libusb_device_handle *);
void ugen_destroy_device(struct libusb_device *);

int ugen_submit_transfer(struct usbi_transfer *);
int ugen_cancel_transfer(struct usbi_transfer *);
void ugen_clear_transfer_priv(struct usbi_transfer *);
int ugen_handle_events(struct libusb_context *ctx, struct pollfd *, nfds_t,
    int);
int ugen_clock_gettime(int, struct timespec *);

/*
 * Private functions
 */
int _errno_to_libusb(int);
int _cache_active_config_descriptor(struct libusb_device *, int);
int _sync_control_transfer(struct usbi_transfer *);
int _access_endpoint(struct libusb_transfer *);
int _sync_gen_transfer(struct usbi_transfer *);

const struct usbi_os_backend openbsd_backend = {
	"Synchronous OpenBSD backend",
	NULL,				/* init() */
	NULL,				/* exit() */
	ugen_get_device_list,
	ugen_open,
	ugen_close,

	ugen_get_device_descriptor,
	ugen_get_active_config_descriptor,
	ugen_get_config_descriptor,

	ugen_get_configuration,
	ugen_set_configuration,

	ugen_claim_interface,
	ugen_release_interface,

	ugen_set_interface_altsetting,
	ugen_clear_halt,
	ugen_reset_device,

	NULL,				/* kernel_driver_active() */
	NULL,				/* detach_kernel_driver() */
	NULL,				/* attach_kernel_driver() */

	ugen_destroy_device,

	ugen_submit_transfer,
	ugen_cancel_transfer,
	ugen_clear_transfer_priv,

	ugen_handle_events,

	ugen_clock_gettime,
	sizeof(struct device_priv),
	sizeof(struct handle_priv),
	0,				/* transfer_priv_size */
	0,				/* add_iso_packet_size */
};

int
ugen_get_device_list(struct libusb_context * ctx,
	struct discovered_devs **discdevs)
{
	struct libusb_device *dev;
	struct device_priv *dpriv;
	struct usb_device_info di;
	unsigned long session_id;
	char devnode[16];
	int fd, err, i;

	usbi_dbg("");

	/* Only ugen(4) is supported */
	for (i = 0; i < USB_MAX_DEVICES; i++) {
		/* Control endpoint is always .00 */
		snprintf(devnode, sizeof(devnode), "/dev/ugen%d.00", i);

		if ((fd = open(devnode, O_RDONLY)) < 0) {
			if (errno != ENOENT && errno != ENXIO)
				usbi_err(ctx, "could no open %s", devnode);
			continue;
		}

		if (ioctl(fd, USB_GET_DEVICEINFO, &di) < 0)
			continue;

		session_id = (di.udi_bus << 8 | di.udi_addr);
		dev = usbi_get_device_by_session_id(ctx, session_id);

		if (dev == NULL) {
			dev = usbi_alloc_device(ctx, session_id);
			if (dev == NULL)
				return (LIBUSB_ERROR_NO_MEM);

			dev->bus_number = di.udi_bus;
			dev->device_address = di.udi_addr;

			dpriv = (struct device_priv *)dev->os_priv;
			strlcpy(dpriv->devnode, devnode, sizeof(devnode));
			dpriv->fd = -1;

			if (ioctl(fd, USB_GET_DEVICE_DESC, &dpriv->ddesc) < 0) {
				err = errno;
				goto error;
			}

			dpriv->cdesc = NULL;
			if (_cache_active_config_descriptor(dev, fd)) {
				err = errno;
				goto error;
			}

			if ((err = usbi_sanitize_device(dev)))
				goto error;
		}
		close(fd);

		if (discovered_devs_append(*discdevs, dev) == NULL)
			return (LIBUSB_ERROR_NO_MEM);
	}

	return (LIBUSB_SUCCESS);

error:
	close(fd);
	libusb_unref_device(dev);
	return _errno_to_libusb(err);
}

int
ugen_open(struct libusb_device_handle *handle)
{
	struct handle_priv *hpriv = (struct handle_priv *)handle->os_priv;
	struct device_priv *dpriv = (struct device_priv *)handle->dev->os_priv;

	dpriv->fd = open(dpriv->devnode, O_RDWR);
	if (dpriv->fd < 0) {
		dpriv->fd = open(dpriv->devnode, O_RDONLY);
		if (dpriv->fd < 0)
			return _errno_to_libusb(errno);
	}

	usbi_dbg("open %s: fd %d", dpriv->devnode, dpriv->fd);

	if (pipe(hpriv->pipe) < 0)
		return _errno_to_libusb(errno);

	return usbi_add_pollfd(HANDLE_CTX(handle), hpriv->pipe[0], POLLIN);
}

void
ugen_close(struct libusb_device_handle *handle)
{
	struct handle_priv *hpriv = (struct handle_priv *)handle->os_priv;
	struct device_priv *dpriv = (struct device_priv *)handle->dev->os_priv;

	usbi_dbg("close: fd %d", dpriv->fd);

	close(dpriv->fd);
	dpriv->fd = -1;

	usbi_remove_pollfd(HANDLE_CTX(handle), hpriv->pipe[0]);

	close(hpriv->pipe[0]);
	close(hpriv->pipe[1]);
}

int
ugen_get_device_descriptor(struct libusb_device *dev, unsigned char *buf,
    int *host_endian)
{
	struct device_priv *dpriv = (struct device_priv *)dev->os_priv;

	usbi_dbg("");

	memcpy(buf, &dpriv->ddesc, DEVICE_DESC_LENGTH);

	*host_endian = 0;

	return (LIBUSB_SUCCESS);
}

int
ugen_get_active_config_descriptor(struct libusb_device *dev,
    unsigned char *buf, size_t len, int *host_endian)
{
	struct device_priv *dpriv = (struct device_priv *)dev->os_priv;
	usb_config_descriptor_t *ucd;

	ucd = (usb_config_descriptor_t *) dpriv->cdesc;
	len = MIN(len, UGETW(ucd->wTotalLength));

	usbi_dbg("len %d", len);

	memcpy(buf, dpriv->cdesc, len);

	*host_endian = 0;

	return (LIBUSB_SUCCESS);
}

int
ugen_get_config_descriptor(struct libusb_device *dev, uint8_t idx,
    unsigned char *buf, size_t len, int *host_endian)
{
	struct device_priv *dpriv = (struct device_priv *)dev->os_priv;
	struct usb_full_desc ufd;
	int fd, err;

	usbi_dbg("index %d, len %d", idx, len);

	/* A config descriptor may be requested before opening the device */
	if (dpriv->fd >= 0) {
		fd = dpriv->fd;
	} else {
		fd = open(dpriv->devnode, O_RDONLY);
		if (fd < 0)
			return _errno_to_libusb(errno);
	}

	ufd.ufd_config_index = idx;
	ufd.ufd_size = len;
	ufd.ufd_data = buf;

	if ((ioctl(fd, USB_GET_FULL_DESC, &ufd)) < 0) {
		err = errno;
		if (dpriv->fd < 0)
			close(fd);
		return _errno_to_libusb(err);
	}

	if (dpriv->fd < 0)
		close(fd);

	*host_endian = 0;

	return (LIBUSB_SUCCESS);
}

int
ugen_get_configuration(struct libusb_device_handle *handle, int *config)
{
	struct device_priv *dpriv = (struct device_priv *)handle->dev->os_priv;

	usbi_dbg("");

	if (ioctl(dpriv->fd, USB_GET_CONFIG, config) < 0)
		return _errno_to_libusb(errno);

	usbi_dbg("configuration %d", *config);

	return (LIBUSB_SUCCESS);
}

int
ugen_set_configuration(struct libusb_device_handle *handle, int config)
{
	struct device_priv *dpriv = (struct device_priv *)handle->dev->os_priv;

	usbi_dbg("configuration %d", config);

	if (ioctl(dpriv->fd, USB_SET_CONFIG, &config) < 0)
		return _errno_to_libusb(errno);

	return _cache_active_config_descriptor(handle->dev, dpriv->fd);
}

int
ugen_claim_interface(struct libusb_device_handle *handle, int iface)
{
	struct handle_priv *hpriv = (struct handle_priv *)handle->os_priv;
	int i;

	for (i = 0; i < USB_MAX_ENDPOINTS; i++)
		hpriv->endpoints[i] = -1;

	return (LIBUSB_SUCCESS);
}

int
ugen_release_interface(struct libusb_device_handle *handle, int iface)
{
	struct handle_priv *hpriv = (struct handle_priv *)handle->os_priv;
	int i;

	for (i = 0; i < USB_MAX_ENDPOINTS; i++)
		if (hpriv->endpoints[i] >= 0)
			close(hpriv->endpoints[i]);

	return (LIBUSB_SUCCESS);
}

int
ugen_set_interface_altsetting(struct libusb_device_handle *handle, int iface,
    int altsetting)
{
	struct device_priv *dpriv = (struct device_priv *)handle->dev->os_priv;
	struct usb_alt_interface intf;

	usbi_dbg("iface %d, setting %d", iface, altsetting);

	memset(&intf, 0, sizeof(intf));

	intf.uai_interface_index = iface;
	intf.uai_alt_no = altsetting;

	if (ioctl(dpriv->fd, USB_SET_ALTINTERFACE, &intf) < 0)
		return _errno_to_libusb(errno);

	return (LIBUSB_SUCCESS);
}

int
ugen_clear_halt(struct libusb_device_handle *handle, unsigned char endpoint)
{
	struct device_priv *dpriv = (struct device_priv *)handle->dev->os_priv;
	struct usb_ctl_request req;

	usbi_dbg("");

	req.ucr_request.bmRequestType = UT_WRITE_ENDPOINT;
	req.ucr_request.bRequest = UR_CLEAR_FEATURE;
	USETW(req.ucr_request.wValue, UF_ENDPOINT_HALT);
	USETW(req.ucr_request.wIndex, endpoint);
	USETW(req.ucr_request.wLength, 0);

	if (ioctl(dpriv->fd, USB_DO_REQUEST, &req) < 0)
		return _errno_to_libusb(errno);

	return (LIBUSB_SUCCESS);
}

int
ugen_reset_device(struct libusb_device_handle *handle)
{
	usbi_dbg("");

	return (LIBUSB_ERROR_NOT_SUPPORTED);
}

void
ugen_destroy_device(struct libusb_device *dev)
{
	struct device_priv *dpriv = (struct device_priv *)dev->os_priv;

	usbi_dbg("");

	free(dpriv->cdesc);
}

int
ugen_submit_transfer(struct usbi_transfer *itransfer)
{
	struct libusb_transfer *transfer;
	struct handle_priv *hpriv;
	int err = 0;

	usbi_dbg("");

	transfer = __USBI_TRANSFER_TO_LIBUSB_TRANSFER(itransfer);
	hpriv = (struct handle_priv *)transfer->dev_handle->os_priv;

	switch (transfer->type) {
	case LIBUSB_TRANSFER_TYPE_CONTROL:
		err = _sync_control_transfer(itransfer);
		break;
	case LIBUSB_TRANSFER_TYPE_ISOCHRONOUS:
		if (transfer->endpoint & LIBUSB_ENDPOINT_OUT) {
			/* Isochronous write is not supported */
			err = LIBUSB_ERROR_NOT_SUPPORTED;
			break;
		}
		/* PASSTHROUGH */
	case LIBUSB_TRANSFER_TYPE_BULK:
	case LIBUSB_TRANSFER_TYPE_INTERRUPT:
		err = _sync_gen_transfer(itransfer);
		break;
	}

	if (err)
		return (err);

	if (write(hpriv->pipe[1], &itransfer, sizeof(itransfer)) < 0)
		return _errno_to_libusb(errno);

	return (LIBUSB_SUCCESS);
}

int
ugen_cancel_transfer(struct usbi_transfer *itransfer)
{
	usbi_dbg("");

	return (LIBUSB_ERROR_NOT_SUPPORTED);
}

void
ugen_clear_transfer_priv(struct usbi_transfer *itransfer)
{
	usbi_dbg("");

	/* Nothing to do */
}

int
ugen_handle_events(struct libusb_context *ctx, struct pollfd *fds, nfds_t nfds,
    int num_ready)
{
	struct libusb_device_handle *handle;
	struct handle_priv *hpriv;
	struct usbi_transfer *itransfer;
	struct pollfd *pollfd;
	int i, err = 0;

	usbi_dbg("");

	pthread_mutex_lock(&ctx->open_devs_lock);
	for (i = 0; i < nfds && num_ready > 0; i++) {
		pollfd = &fds[i];

		if (!pollfd->revents)
			continue;

		num_ready--;
		list_for_each_entry(handle, &ctx->open_devs, list) {
			hpriv = (struct handle_priv *)handle->os_priv;

			if (hpriv->pipe[0] == pollfd->fd)
				break;
		}

		if (pollfd->revents & POLLERR) {
			usbi_remove_pollfd(HANDLE_CTX(handle), hpriv->pipe[0]);
			usbi_handle_disconnect(handle);
			continue;
		}

		if (read(hpriv->pipe[0], &itransfer, sizeof(itransfer)) < 0) {
			err = errno;
			break;
		}

		if ((err = usbi_handle_transfer_completion(itransfer,
		    LIBUSB_TRANSFER_COMPLETED)))
			break;
	}
	pthread_mutex_unlock(&ctx->open_devs_lock);

	if (err)
		return _errno_to_libusb(err);

	return (LIBUSB_SUCCESS);
}

int
ugen_clock_gettime(int clkid, struct timespec *tp)
{
	usbi_dbg("clock %d", clkid);

	if (clkid == USBI_CLOCK_REALTIME)
		return clock_gettime(CLOCK_REALTIME, tp);

	if (clkid == USBI_CLOCK_MONOTONIC)
		return clock_gettime(CLOCK_MONOTONIC, tp);

	return (LIBUSB_ERROR_INVALID_PARAM);
}

int
_errno_to_libusb(int err)
{
	switch (err) {
	case EIO:
		return (LIBUSB_ERROR_IO);
	case EACCES:
		return (LIBUSB_ERROR_ACCESS);
	case ENOENT:
		return (LIBUSB_ERROR_NO_DEVICE);
	case ENOMEM:
		return (LIBUSB_ERROR_NO_MEM);
	}

	usbi_dbg("error: %s", strerror(err));

	return (LIBUSB_ERROR_OTHER);
}

int
_cache_active_config_descriptor(struct libusb_device *dev, int fd)
{
	struct device_priv *dpriv = (struct device_priv *)dev->os_priv;
	struct usb_config_desc ucd;
	struct usb_full_desc ufd;
	unsigned char* buf;
	int len;

	usbi_dbg("fd %d", fd);

	ucd.ucd_config_index = USB_CURRENT_CONFIG_INDEX;

	if ((ioctl(fd, USB_GET_CONFIG_DESC, &ucd)) < 0)
		return _errno_to_libusb(errno);

	usbi_dbg("active bLength %d", ucd.ucd_desc.bLength);

	len = UGETW(ucd.ucd_desc.wTotalLength);
	buf = malloc(len);
	if (buf == NULL)
		return (LIBUSB_ERROR_NO_MEM);

	ufd.ufd_config_index = ucd.ucd_config_index;
	ufd.ufd_size = len;
	ufd.ufd_data = buf;

	usbi_dbg("index %d, len %d", ufd.ufd_config_index, len);

	if ((ioctl(fd, USB_GET_FULL_DESC, &ufd)) < 0)
		return _errno_to_libusb(errno);

	if (dpriv->cdesc)
		free(dpriv->cdesc);
	dpriv->cdesc = buf;

	return (0);
}

int
_sync_control_transfer(struct usbi_transfer *itransfer)
{
	struct libusb_transfer *transfer;
	struct libusb_control_setup *setup;
	struct device_priv *dpriv;
	struct usb_ctl_request req;

	transfer = __USBI_TRANSFER_TO_LIBUSB_TRANSFER(itransfer);
	dpriv = (struct device_priv *)transfer->dev_handle->dev->os_priv;
	setup = (struct libusb_control_setup *)transfer->buffer;

	usbi_dbg("type %d request %d value %d index %d length %d timeout %d",
	    setup->bmRequestType, setup->bRequest,
	    libusb_le16_to_cpu(setup->wValue),
	    libusb_le16_to_cpu(setup->wIndex),
	    libusb_le16_to_cpu(setup->wLength), transfer->timeout);

	req.ucr_request.bmRequestType = setup->bmRequestType;
	req.ucr_request.bRequest = setup->bRequest;
	/* Don't use USETW, libusb already deals with the endianness */
	(*(uint16_t *)req.ucr_request.wValue) = setup->wValue;
	(*(uint16_t *)req.ucr_request.wIndex) = setup->wIndex;
	(*(uint16_t *)req.ucr_request.wLength) = setup->wLength;
	req.ucr_data = transfer->buffer + LIBUSB_CONTROL_SETUP_SIZE;

	if ((transfer->flags & LIBUSB_TRANSFER_SHORT_NOT_OK) == 0)
		req.ucr_flags = USBD_SHORT_XFER_OK;

	if ((ioctl(dpriv->fd, USB_SET_TIMEOUT, &transfer->timeout)) < 0)
		return _errno_to_libusb(errno);

	if ((ioctl(dpriv->fd, USB_DO_REQUEST, &req)) < 0)
		return _errno_to_libusb(errno);

	itransfer->transferred = req.ucr_actlen;

	usbi_dbg("transferred %d", itransfer->transferred);

	return (0);
}

int
_access_endpoint(struct libusb_transfer *transfer)
{
	struct handle_priv *hpriv;
	struct device_priv *dpriv;
	char *s, devnode[16];
	int fd, endpt;
	mode_t mode;

	hpriv = (struct handle_priv *)transfer->dev_handle->os_priv;
	dpriv = (struct device_priv *)transfer->dev_handle->dev->os_priv;

	endpt = UE_GET_ADDR(transfer->endpoint);
	mode = (transfer->endpoint & LIBUSB_ENDPOINT_IN) ? O_RDONLY : O_WRONLY;

	usbi_dbg("endpoint %d mode %d", endpt, mode);

  	if (hpriv->endpoints[endpt] < 0) {
		/* Pick the right node given the control one */
		strlcpy(devnode, dpriv->devnode, sizeof(devnode));
		s = strchr(devnode, '.');
		snprintf(s, 4, ".%02d", endpt);

		if ((fd = open(devnode, mode)) < 0)
			return (-1);

		hpriv->endpoints[endpt] = fd;
	}

	return (hpriv->endpoints[endpt]);
}

int
_sync_gen_transfer(struct usbi_transfer *itransfer)
{
	struct libusb_transfer *transfer;
	int fd, err, nr = 1;

	transfer = __USBI_TRANSFER_TO_LIBUSB_TRANSFER(itransfer);

	/*
	 * Bulk, Interrupt or Isochronous transfer depends on the
	 * endpoint and thus the node to open.
	 */
	if ((fd = _access_endpoint(transfer)) < 0)
		return _errno_to_libusb(errno);

	if ((ioctl(fd, USB_SET_TIMEOUT, &transfer->timeout)) < 0)
		return _errno_to_libusb(errno);

	if (transfer->endpoint & LIBUSB_ENDPOINT_IN) {
		if ((transfer->flags & LIBUSB_TRANSFER_SHORT_NOT_OK) == 0)
			if ((ioctl(fd, USB_SET_SHORT_XFER, &nr)) < 0)
				return _errno_to_libusb(errno);

		nr = read(fd, transfer->buffer, transfer->length);
	} else {
		nr = write(fd, transfer->buffer, transfer->length);
	}

	if (nr < 0) {
		err = errno;
		close(fd);
		return _errno_to_libusb(err);
	}

	itransfer->transferred = nr;

	return (0);
}
