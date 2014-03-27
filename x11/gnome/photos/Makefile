# $OpenBSD: Makefile,v 1.16 2014/03/27 15:12:47 ajacoutot Exp $

TRACKER_VERSION=	1.0

COMMENT=		access, organize and share your photos on GNOME

GNOME_PROJECT=		gnome-photos
GNOME_VERSION=		3.10.2
REVISION=		1

CATEGORIES=		graphics

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += babl-0.1 c cairo cairo-gobject croco-0.6 dbus-1 execinfo
WANTLIB += exempi exif expat ffi fontconfig freetype gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gegl-0.2 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-desktop-3 goa-1.0 gobject-2.0 gpg-error graphite2
WANTLIB += grilo-0.2 gthread-2.0 gtk-3 harfbuzz icui18n icuuc
WANTLIB += kvm lcms2 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs rsvg-2 secret-1
WANTLIB += sqlite3 uuid xcb xcb-render xcb-shm
WANTLIB += xkbfile xml2 z icudata
WANTLIB += tracker-miner-${TRACKER_VERSION}
WANTLIB += tracker-sparql-${TRACKER_VERSION}
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-data
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-common

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

LIB_DEPENDS=		graphics/gegl \
			x11/gnome/grilo \
			x11/gnome/online-accounts \
			x11/gnome/tracker

MODGNOME_ICON_CACHE=	Yes
MODGNOME_DESKTOP_FILE=	Yes

.include <bsd.port.mk>
