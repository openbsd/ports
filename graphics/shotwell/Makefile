# $OpenBSD: Makefile,v 1.108 2019/08/21 07:55:45 ajacoutot Exp $

COMMENT =		digital photo organizer

GNOME_VERSION =		0.30.7
GNOME_PROJECT =		shotwell

SHARED_LIBS += shotwell-plugin-common    0.0 # 0.30.5
SHARED_LIBS += shotwell-authenticator    0.0 # 0.30.5
SHARED_LIBS += shotwell-plugin-dev-1.0   0.0 # 0.30.5

CATEGORIES =		graphics

HOMEPAGE =		https://wiki.gnome.org/Apps/Shotwell

MAINTAINER = 		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c cairo exif gcr-base-3 gcr-ui-3 gdata gdk-3 gdk_pixbuf-2.0
WANTLIB += gee-0.8 gexiv2 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gphoto2 gphoto2_port gstpbutils-1.0 gstreamer-1.0 gtk-3
WANTLIB += intl json-glib-1.0 m pango-1.0 pangocairo-1.0 raw soup-2.4
WANTLIB += sqlite3 webkit2gtk-4.0 xml2

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache vala yelp

LIB_DEPENDS =		devel/libgdata \
			devel/libgee \
			graphics/libgexiv2 \
			graphics/libgphoto2 \
			graphics/libraw

CONFIGURE_ARGS =	-Dface-detection=false \
			-Dudev=false

.include <bsd.port.mk>
