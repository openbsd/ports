# $OpenBSD: Makefile,v 1.101 2019/02/07 19:46:26 ajacoutot Exp $

COMMENT =		digital photo organizer

GNOME_VERSION =		0.30.2
GNOME_PROJECT =		shotwell

CATEGORIES =		graphics

HOMEPAGE =		https://wiki.gnome.org/Apps/Shotwell

SHARED_LIBS += shotwell-plugin-common    0.0 # 0.30.0
SHARED_LIBS += shotwell-authenticator    0.0 # 0.30.0
SHARED_LIBS += shotwell-plugin-dev-1.0   0.0 # 0.30.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject exif gck-1 gcr-base-3
WANTLIB += gcr-ui-3 gdata gdk-3 gdk_pixbuf-2.0 gee-0.8 gexiv2
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gphoto2 gphoto2_port
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gtk-3 intl javascriptcoregtk-4.0
WANTLIB += json-glib-1.0 lcms2 m p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pthread raw soup-2.4 sqlite3 stdc++ webkit2gtk-4.0
WANTLIB += xml2

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
