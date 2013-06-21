# $OpenBSD: Makefile,v 1.8 2013/06/21 22:38:34 sthen Exp $

COMMENT=		access, organize and share your photos on GNOME

GNOME_PROJECT=		gnome-photos
GNOME_VERSION=		3.8.2
REVISION=		1

CATEGORIES=		graphics

HOMEPAGE=		https://live.gnome.org/GnomePhotos

TRACKER_VERSION=	0.16
SUBST_VARS=		TRACKER_VERSION

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += babl-0.1 c cairo cairo-gobject croco-0.6 dbus-1 uuid
WANTLIB += execinfo exempi exif expat ffi fontconfig freetype
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gegl-0.2 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-desktop-3 goa-1.0 gobject-2.0 gpg-error
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz icui18n
WANTLIB += kvm lcms2 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs rsvg-2 secret-1
WANTLIB += sqlite3 tracker-sparql-0.16 xcb xcb-render xcb-shm
WANTLIB += xkbfile xml2 z
WANTLIB += tracker-miner-${TRACKER_VERSION}
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-data
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-common

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

LIB_DEPENDS=		graphics/gegl \
			x11/gnome/online-accounts \
			x11/gnome/tracker

MODGNOME_ICON_CACHE=	Yes
MODGNOME_DESKTOP_FILE=	Yes

.include <bsd.port.mk>
