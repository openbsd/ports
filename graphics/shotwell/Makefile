COMMENT =		digital photo organizer

GNOME_VERSION =		0.32.7
GNOME_PROJECT =		shotwell

SHARED_LIBS += shotwell-plugin-dev-1.0   0.0 # 0.32.4
SHARED_LIBS += shotwell-plugin-common    0.0 # 0.32.4
SHARED_LIBS += shotwell-authenticator    0.0 # 0.32.4

CATEGORIES =		graphics

HOMEPAGE =		https://wiki.gnome.org/Apps/Shotwell

MAINTAINER = 		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c cairo cairo-gobject exif gcr-base-3 gcr-ui-3 gdk-3
WANTLIB += gdk_pixbuf-2.0 gee-0.8 gexiv2 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gphoto2 gphoto2_port gstpbutils-1.0 gstreamer-1.0
WANTLIB += gtk-3 intl json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += portal portal-gtk3 raw secret-1 soup-3.0 sqlite3 webp
WANTLIB += webpdemux xml2

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache vala yelp

LIB_DEPENDS =		devel/json-glib \
			devel/libsoup3 \
			devel/libgee \
			graphics/libgexiv2 \
			graphics/libgphoto2 \
			graphics/libraw \
			multimedia/gstreamer1/plugins-base \
			sysutils/flatpak/libportal,-gtk3 \
			x11/gnome/gcr

CONFIGURE_ARGS =	-Dinstall_apport_hook=false \
			-Dudev=false

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# XXX unbreak with new vala
# src/shotwell.p/camera/GPhoto.c:18:10: fatal error: 'camera/GPhoto.h' file not found
# #include <camera/GPhoto.h>
post-configure:
	install -d ${WRKBUILD}/src/shotwell.p/camera/
	touch ${WRKBUILD}/src/shotwell.p/camera/GPhoto.h

.include <bsd.port.mk>
