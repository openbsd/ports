# $OpenBSD: Makefile,v 1.40 2014/03/31 10:12:19 jasper Exp $

COMMENT=	gobject-based plugins engine

GNOME_PROJECT=	libpeas
GNOME_VERSION=	1.10.0

CATEGORIES=	devel

SHARED_LIBS +=  peas-1.0             400.1      # 599.1
SHARED_LIBS +=  peas-gtk-1.0         400.1      # 599.1

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext \
		x11/gnome \
		lang/python

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs util xcb xcb-render xcb-shm z
WANTLIB += ${MODPY_WANTLIB}

BUILD_DEPENDS=	devel/py-gobject3${MODPY_FLAVOR}

RUN_DEPENDS=	devel/py-gobject3 \
		devel/py-gobject3${MODPY_FLAVOR}

LIB_DEPENDS=	devel/gobject-introspection \
		x11/gtk+3

MODGNOME_ICON_CACHE=	Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-static \
		--disable-glade-catalog

# we need support for both python2 and python3
BUILD_DEPENDS +=lang/python/${MODPY_DEFAULT_VERSION_2}
RUN_DEPENDS +=	lang/python/${MODPY_DEFAULT_VERSION_2}
WANTLIB +=	python${MODPY_DEFAULT_VERSION_2}
CONFIGURE_ENV=	PYTHON2="${LOCALBASE}/bin/python${MODPY_DEFAULT_VERSION_2}" \
		PYTHON3="${MODPY_BIN}" \
		PYTHON3_CONFIG="${LOCALBASE}/bin/python${MODPY_DEFAULT_VERSION_3}-config"

post-install:
	rm ${PREFIX}/lib/libpeas-1.0/loaders/*.la
	rm ${PREFIX}/lib/peas-demo/plugins/{helloworld,secondtime}/*.la

.include <bsd.port.mk>
