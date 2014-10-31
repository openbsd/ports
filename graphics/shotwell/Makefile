# $OpenBSD: Makefile,v 1.46 2014/10/31 23:54:39 ajacoutot Exp $

COMMENT =	digital photo organizer

GNOME_VERSION =	0.20.2
GNOME_PROJECT =	shotwell

CATEGORIES =	graphics

HOMEPAGE =	https://wiki.gnome.org/Apps/Shotwell

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 exif exiv2 expat fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gee-0.8 gexiv2 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gphoto2 gphoto2_port
WANTLIB += gstbase-1.0 gstpbutils-1.0 gstreamer-1.0 gthread-2.0
WANTLIB += gtk-3 harfbuzz javascriptcoregtk-3.0 json-glib-1.0
WANTLIB += lcms2 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs raw rest-0.7 soup-2.4
WANTLIB += sqlite3 stdc++ webkitgtk-3.0 xcb xcb-render xcb-shm
WANTLIB += xml2 z

MODULES =	devel/dconf \
		devel/gettext \
		x11/gnome

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache vala yelp

LIB_DEPENDS =	devel/json-glib \
		devel/libgee \
		graphics/libgexiv2 \
		graphics/libgphoto2 \
		graphics/libraw \
		net/librest \
		www/webkit,gtk3

# beware: configure is an horrible homemade shell script
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--disable-desktop-update \
			--disable-icon-update

pre-configure:
	${SUBST_CMD} ${WRKSRC}/plugins/Makefile.plugin.mk

.include <bsd.port.mk>
