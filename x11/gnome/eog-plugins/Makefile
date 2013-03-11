# $OpenBSD: Makefile,v 1.41 2013/03/11 11:46:10 espie Exp $

COMMENT=		plugins for EOG

GNOME_PROJECT=		eog-plugins
GNOME_VERSION=		3.6.1

CATEGORIES=		graphics

HOMEPAGE=		http://live.gnome.org/EyeOfGnome/Plugins

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi cairo cairo-gobject champlain-0.12
WANTLIB += champlain-gtk-0.12 clutter-1.0 clutter-gtk-1.0 cogl
WANTLIB += cogl-pango crypto curl dbus-1 drm exif expat ffi fontconfig
WANTLIB += freetype gcrypt gdata gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += girepository-1.0 glib-2.0 gmodule-2.0 gnome-keyring
WANTLIB += gobject-2.0 gpg-error gthread-2.0 gtk-3 harfbuzz icudata
WANTLIB += icule icuuc idn json-glib-1.0 m memphis-0.2 nspr4 nss3
WANTLIB += oauth pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre peas-1.0
WANTLIB += pixman-1 plc4 plds4 png pthread pthread-stubs smime3
WANTLIB += softokn3 soup-2.4 soup-gnome-2.4 sqlite3 ssl ssl3 stdc++
WANTLIB += xcb xcb-render xcb-shm xml2 z gck-1 gcr-base-3 goa-1.0 p11-kit

LIB_DEPENDS=    	devel/libgdata \
			devel/libpeas \
			geo/libchamplain>=0.12.2 \
			graphics/libexif
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		x11/gnome/eog>=${GNOME_VERSION}

# XXX the "postr" plugin needs postr which hasn't been ported yet
CONFIGURE_ARGS+=	--enable-python \
			--with-plugins=all

post-install:
	rm ${PREFIX}/lib/eog/plugins/*.{a,la}

.include <bsd.port.mk>
