# $OpenBSD: Makefile,v 1.30 2017/11/02 10:12:05 jasper Exp $

COMMENT=		screenshot application for GNOME

GNOME_PROJECT=		gnome-screenshot
GNOME_VERSION=		3.26.0
REVISION=		0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 c cairo canberra canberra-gtk3 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl m Xext

BUILD_DEPENDS=		devel/appstream-glib
LIB_DEPENDS=		audio/libcanberra,-gtk3

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

.include <bsd.port.mk>
