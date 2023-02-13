COMMENT =		digital photo organizer

GNOME_VERSION =		0.30.17
GNOME_PROJECT =		shotwell
REVISION =		1

SHARED_LIBS += shotwell-plugin-dev-1.0   0.0 # 0.30.16
SHARED_LIBS += shotwell-plugin-common    0.0 # 0.30.16
SHARED_LIBS += shotwell-authenticator    0.0 # 0.30.16

CATEGORIES =		graphics

HOMEPAGE =		https://wiki.gnome.org/Apps/Shotwell

MAINTAINER = 		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c cairo cairo-gobject exif gcr-base-3 gcr-ui-3 gdata
WANTLIB += gdk-3 gdk_pixbuf-2.0 gee-0.8 gexiv2 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gphoto2 gphoto2_port gstpbutils-1.0
WANTLIB += gstreamer-1.0 gtk-3 intl json-glib-1.0 m pango-1.0
WANTLIB += pangocairo-1.0 raw soup-2.4 sqlite3 webkit2gtk-4.0
WANTLIB += xml2

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache vala yelp

LIB_DEPENDS =		devel/libgdata \
			devel/libgee \
			graphics/libgexiv2 \
			graphics/libgphoto2 \
			graphics/libraw \
			www/webkitgtk4

CONFIGURE_ARGS =	-Dface-detection=false \
			-Dudev=false \
			-Dinstall-apport-hook=false

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# XXX unbreak with new vala
# src/shotwell.p/camera/GPhoto.c:18:10: fatal error: 'camera/GPhoto.h' file not found
# #include <camera/GPhoto.h>
post-configure:
	install -d ${WRKBUILD}/src/shotwell.p/camera/
	touch ${WRKBUILD}/src/shotwell.p/camera/GPhoto.h

.include <bsd.port.mk>
