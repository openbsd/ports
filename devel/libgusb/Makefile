# $OpenBSD: Makefile,v 1.1.1.1 2022/02/13 12:00:19 ajacoutot Exp $

COMMENT=		GObject wrapper for libusb1

GH_ACCOUNT=		hughsie
GH_PROJECT=		libgusb
GH_TAGNAME=		0.3.10

SHARED_LIBS += gusb                      0.0 # 2.0.10

CATEGORIES=		devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 usb-1.0

MODULES=		devel/meson

BUILD_DEPENDS=		devel/gobject-introspection \
			lang/vala

LIB_DEPENDS=		devel/glib2 \
			devel/libusb1

CONFIGURE_ARGS=		-Ddocs=false

CONFIGURE_ARGS +=	-Dusb_ids=${LOCALBASE}/share/hwdata/usb.ids
RUN_DEPENDS +=		misc/hwdata

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
