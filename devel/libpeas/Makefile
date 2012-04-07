# $OpenBSD: Makefile,v 1.19 2012/04/07 13:48:45 ajacoutot Exp $

COMMENT=	gobject-based plugins engine

GNOME_PROJECT=	libpeas
GNOME_VERSION=	1.4.0

CATEGORIES=	devel

SHARED_LIBS +=  peas-1.0             400.0      # 400.0
SHARED_LIBS +=  peas-gtk-1.0         400.0      # 400.0

HOMEPAGE=	http://live.gnome.org/Libpeas

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject dbus-1 dbus-glib-1 drm enchant
WANTLIB += expat ffi fontconfig freetype gailutil-3 gdk-3 gdk_pixbuf-2.0
WANTLIB += geoclue gio-2.0 girepository-1.0 gjs glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gstapp-0.10 gstaudio-0.10 gstbase-0.10
WANTLIB += gstfft-0.10 gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10
WANTLIB += gstvideo-0.10 gthread-2.0 gtk-3 icudata icui18n icuuc
WANTLIB += javascriptcoregtk-3.0 jpeg m mozjs185 ncurses nspr4
WANTLIB += orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 plc4 plds4 png pthread pthread-stubs seed-gtk3
WANTLIB += soup-2.4 sqlite3 stdc++ util webkitgtk-3.0 xcb xcb-render
WANTLIB += xcb-shm xml2 xslt z
WANTLIB += ${MODPY_WANTLIB}

MODULES=	devel/gettext \
		x11/gnome \
		lang/python

RUN_DEPENDS=	devel/py-gobject3
BUILD_DEPENDS=	devel/py-gobject3

MODGNOME_TOOLS= vala
MODGNOME_ICON_CACHE=	Yes

LIB_DEPENDS=	devel/gobject-introspection \
		x11/gnome/seed \
		x11/gnome/gjs>=1.32.0

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-static \
		--disable-glade-catalog \
		--enable-gjs \
		--enable-seed \
		--enable-python

.include <bsd.port.mk>
