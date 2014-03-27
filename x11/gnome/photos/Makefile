# $OpenBSD: Makefile,v 1.17 2014/03/27 16:21:58 ajacoutot Exp $

TRACKER_VERSION=	1.0

COMMENT=		access, organize and share your photos on GNOME

GNOME_PROJECT=		gnome-photos
GNOME_VERSION=		3.12.0

CATEGORIES=		graphics

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += babl-0.1 c cairo cairo-gobject croco-0.6 dbus-1 execinfo
WANTLIB += exempi exif expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gegl-0.2 gfbgraph-0.2 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-desktop-3 goa-1.0 gobject-2.0 graphite2 grilo-0.2
WANTLIB += gthread-2.0 gtk-3 harfbuzz icudata icui18n icuuc json-glib-1.0
WANTLIB += kvm lcms2 m mediaart-1.0 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs rest-0.7 rsvg-2
WANTLIB += soup-2.4 soup-gnome-2.4 sqlite3 uuid xcb xcb-render
WANTLIB += xcb-shm xml2 z
WANTLIB += tracker-control-${TRACKER_VERSION}
WANTLIB += tracker-sparql-${TRACKER_VERSION}
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-data
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-common

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

LIB_DEPENDS=		graphics/gegl \
			x11/gnome/gfbgraph \
			x11/gnome/grilo \
			x11/gnome/online-accounts \
			x11/gnome/tracker

MODGNOME_ICON_CACHE=	Yes
MODGNOME_DESKTOP_FILE=	Yes

.include <bsd.port.mk>
