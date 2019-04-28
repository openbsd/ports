# $OpenBSD: Makefile,v 1.62 2019/04/28 20:51:29 sthen Exp $

COMMENT=	gobject-based plugins engine

GNOME_PROJECT=	libpeas
GNOME_VERSION=	1.22.0
REVISION=	4

CATEGORIES=	devel

SHARED_LIBS +=  peas-1.0             400.2      # 1800.0
SHARED_LIBS +=  peas-gtk-1.0         400.2      # 1800.0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome \
		lang/python

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 epoxy expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += util xcb xcb-render xcb-shm z
WANTLIB += Xtst ${MODPY_WANTLIB}

BUILD_DEPENDS=	devel/py-gobject3${MODPY_FLAVOR}

RUN_DEPENDS=	devel/py-gobject3${MODPY_FLAVOR}

LIB_DEPENDS=	devel/gobject-introspection \
		x11/gtk+3

MODGNOME_TOOLS +=	gtk-update-icon-cache
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-glade-catalog \
		--disable-lua5.1 \
		--disable-luajit

# we need support for both python2 and python3
BUILD_DEPENDS +=lang/python/${MODPY_DEFAULT_VERSION_2}
RUN_DEPENDS +=	lang/python/${MODPY_DEFAULT_VERSION_2} \
		devel/py-gobject3
WANTLIB +=	python${MODPY_DEFAULT_VERSION_2}

post-install:
	rm ${PREFIX}/lib/libpeas-1.0/loaders/*.{a,la}
	rm ${PREFIX}/lib/peas-demo/plugins/{helloworld,secondtime}/*.{a,la}

.include <bsd.port.mk>
