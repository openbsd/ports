COMMENT =		digital photo organizer

GNOME_VERSION =		33.0
GNOME_PROJECT =		shotwell

SHARED_LIBS += shotwell-plugin-dev-1.0   0.0 # 0.32.13
SHARED_LIBS += shotwell-plugin-common    0.0 # 0.32.13
SHARED_LIBS += shotwell-authenticator    0.0 # 0.32.13

CATEGORIES =		graphics

MAINTAINER = 		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c cairo cairo-gobject exif gcr-4 gdk_pixbuf-2.0 gee-0.8
WANTLIB += gexiv2-0.16 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gphoto2 gphoto2_port graphene-1.0 gstreamer-1.0 gtk-4
WANTLIB += intl json-glib-1.0 m pango-1.0 pangocairo-1.0 portal
WANTLIB += portal-gtk4 raw secret-1 soup-3.0 sqlite3 webp webpdemux
WANTLIB += xml2

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache vala yelp

LIB_DEPENDS =		devel/json-glib \
			devel/libsoup3 \
			devel/libgee \
			graphics/gexiv2 \
			graphics/libgphoto2 \
			graphics/libraw \
			multimedia/gstreamer1/core \
			sysutils/flatpak/libportal,-gtk4 \
			x11/gnome/gcr4

CONFIGURE_ARGS =	-Dinstall_apport_hook=false \
			-Dudev=disabled

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
