# $OpenBSD: Makefile,v 1.26 2013/03/11 10:50:10 espie Exp $

COMMENT=	gobject-based plugins engine

GNOME_PROJECT=	libpeas
GNOME_VERSION=	1.6.2

CATEGORIES=	devel

SHARED_LIBS +=  peas-1.0             400.1      # 599.1
SHARED_LIBS +=  peas-gtk-1.0         400.1      # 599.1

HOMEPAGE=	http://live.gnome.org/Libpeas

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext \
		x11/gnome \
		lang/python

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject dbus-1 drm
WANTLIB += expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 gjs glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz icudata icule icuuc m mozjs185
WANTLIB += ncurses nspr4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += stdc++ util xcb xcb-render xcb-shm z
WANTLIB += ${MODPY_WANTLIB}

RUN_DEPENDS=	devel/py-gobject3
BUILD_DEPENDS=	devel/py-gobject3

LIB_DEPENDS=	devel/gobject-introspection \
		x11/gnome/gjs>=1.32.0 \
		x11/gtk+3

MODGNOME_ICON_CACHE=	Yes

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-static \
		--disable-glade-catalog \
		--disable-seed

post-install:
	rm ${PREFIX}/lib/libpeas-1.0/loaders/*.la
	rm ${PREFIX}/lib/peas-demo/plugins/{helloworld,secondtime}/*.la

.include <bsd.port.mk>
