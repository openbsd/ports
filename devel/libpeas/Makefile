# $OpenBSD: Makefile,v 1.45 2014/08/10 11:59:17 jasper Exp $

COMMENT=	gobject-based plugins engine

GNOME_PROJECT=	libpeas
GNOME_VERSION=	1.10.1

CATEGORIES=	devel

SHARED_LIBS +=  peas-1.0             400.1      # 1001.0
SHARED_LIBS +=  peas-gtk-1.0         400.1      # 1001.0

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

MODGNOME_TOOLS +=	gtk-update-icon-cache
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-glade-catalog

# we need support for both python2 and python3
BUILD_DEPENDS +=lang/python/${MODPY_DEFAULT_VERSION_2}
RUN_DEPENDS +=	lang/python/${MODPY_DEFAULT_VERSION_2}
WANTLIB +=	python${MODPY_DEFAULT_VERSION_2}
CONFIGURE_ENV=	PYTHON2="${LOCALBASE}/bin/python${MODPY_DEFAULT_VERSION_2}" \
		PYTHON3="${MODPY_BIN}" \
		PYTHON3_CONFIG="${LOCALBASE}/bin/python${MODPY_DEFAULT_VERSION_3}-config"

post-install:
	rm ${PREFIX}/lib/libpeas-1.0/loaders/*.{a,la}
	rm ${PREFIX}/lib/peas-demo/plugins/{helloworld,secondtime}/*.{a,la}

.include <bsd.port.mk>
