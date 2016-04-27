# $OpenBSD: Makefile,v 1.23 2016/04/27 09:47:44 jasper Exp $

COMMENT=		screenshot application for GNOME

GNOME_PROJECT=		gnome-screenshot
GNOME_VERSION=		3.18.0
REVISION=		0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext atk-1.0 c cairo cairo-gobject canberra canberra-gtk3
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += m pango-1.0 pangocairo-1.0 pthread intl

LIB_DEPENDS=		audio/libcanberra,-gtk3

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils
MODGNOME_LDFLAGS +=	-L${X11BASE}/lib

.include <bsd.port.mk>
