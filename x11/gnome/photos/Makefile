# $OpenBSD: Makefile,v 1.1.1.1 2013/03/28 14:54:28 ajacoutot Exp $

COMMENT=		access, organize and share your photos on GNOME

GNOME_PROJECT=		gnome-photos
GNOME_VERSION=		3.7.3

CATEGORIES=		graphics

HOMEPAGE=		https://live.gnome.org/GnomePhotos

TRACKER_VERSION=	0.14
SUBST_VARS=		TRACKER_VERSION

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject clutter-1.0 clutter-gtk-1.0 cogl
WANTLIB += cogl-pango croco-0.6 dbus-1 e2fs-uuid exempi exif expat
WANTLIB += ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3 gnome-keyring
WANTLIB += goa-1.0 gobject-2.0 gpg-error graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz icudata icui18n icule icuuc json-glib-1.0
WANTLIB += kvm lcms2 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs rsvg-2 sqlite3 tracker-miner-0.14
WANTLIB += tracker-sparql-0.14 xcb xcb-render xcb-shm xkbfile
WANTLIB += xml2 z
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-data
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-common

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

LIB_DEPENDS=		graphics/clutter/clutter-gtk \
			x11/gnome/tracker

MODGNOME_ICON_CACHE=	Yes
MODGNOME_DESKTOP_FILE=	Yes

.include <bsd.port.mk>
