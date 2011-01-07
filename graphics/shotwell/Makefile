# $OpenBSD: Makefile,v 1.3 2011/01/07 09:56:24 landry Exp $

COMMENT =	digital photo organizer

DISTNAME =	shotwell-0.7.2
REVISION =	0
CATEGORIES =	graphics
MASTER_SITES =	http://yorba.org/download/shotwell/0.7/
HOMEPAGE =	http://yorba.org/shotwell/
EXTRACT_SUFX =	.tar.bz2

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi \
		Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png \
		pthread-stubs xcb z ORBit-2 dbus-1 dbus-glib-1 exif \
		gconf-2 gnutls gthread-2.0 pthread soup-2.4 sqlite3 usb \
		xcb-render xml2 exiv2 stdc++ gee gphoto2 \
		gphoto2_port unique-1.0 webkit-1.0 raw gexiv2 gdk-x11-2.0 \
		gdk_pixbuf-2.0 gtk-x11-2.0 GL Xxf86vm drm xcb-shm

MODULES =	devel/gettext x11/gnome devel/gconf2

MODGNOME_HELP_FILES =	Yes
DESKTOP_FILES =		yes

RUN_DEPENDS +=	x11/gnome/librsvg

BUILD_DEPENDS =	lang/vala>=0.10

LIB_DEPENDS =	x11/gtk+2 \
		graphics/libgexiv2 \
		graphics/libraw \
		www/webkit \
		devel/libunique \
		devel/libgee \
		graphics/libgphoto2

NO_REGRESS =	Yes
# beware : configure is an horrible homemade shell script
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--disable-schemas-install \
			--disable-desktop-update \
			--disable-icon-update

MODGCONF2_SCHEMAS_DIR =	shotwell

.include <bsd.port.mk>
