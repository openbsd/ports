# $OpenBSD: Makefile,v 1.6 2013/03/11 11:46:12 espie Exp $

COMMENT=		screenshot application for GNOME

GNOME_PROJECT=		gnome-screenshot
GNOME_VERSION=		3.6.1

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xext Xrender atk-1.0 c cairo cairo-gobject canberra
WANTLIB += canberra-gtk3 expat fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs xcb
WANTLIB += xcb-render xcb-shm z

LIB_DEPENDS=		audio/libcanberra,-gtk3

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

MODGNOME_DESKTOP_FILE=	Yes

.include <bsd.port.mk>
