# $OpenBSD: Makefile,v 1.47 2013/09/27 09:53:07 jasper Exp $

# XXX the "postr" plugin needs postr which hasn't been ported yet

COMMENT=		plugins for EOG

GNOME_PROJECT=		eog-plugins
GNOME_VERSION=		3.10.0

CATEGORIES=		graphics

HOMEPAGE=		http://live.gnome.org/EyeOfGnome/Plugins

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject champlain-0.12 champlain-gtk-0.12
WANTLIB += clutter-1.0 clutter-gtk-1.0 cogl cogl-pango crypto
WANTLIB += curl dbus-1 exif expat ffi fontconfig freetype gck-1
WANTLIB += gcr-base-3 gcrypt gdata gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += girepository-1.0 glib-2.0 gmodule-2.0 goa-1.0 gobject-2.0
WANTLIB += gpg-error graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += idn json-glib-1.0 m memphis-0.2 nspr4 nss3
WANTLIB += oauth p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre peas-1.0 pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += smime3 softokn3 soup-2.4 soup-gnome-2.4 sqlite3 ssl
WANTLIB += ssl3 xcb xcb-render xcb-shm xml2 z

LIB_DEPENDS=    	devel/libgdata \
			devel/libpeas \
			geo/libchamplain>=0.12.2 \
			graphics/libexif

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			x11/gnome/eog>=${GNOME_VERSION}

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			x11/gnome/eog>=${GNOME_VERSION}

post-install:
	rm ${PREFIX}/lib/eog/plugins/*.{a,la}

.include <bsd.port.mk>
