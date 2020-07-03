# $OpenBSD: Makefile,v 1.89 2020/07/03 21:12:38 sthen Exp $

COMMENT=	user interface builder for the gtk+3 toolkit

GNOME_PROJECT= 	glade
GNOME_VERSION=	3.36.0
REVISION=       0

CATEGORIES=	devel

SHARED_LIBS +=  gladeui-2                 2.0 # 0.0

HOMEPAGE=	http://glade.gnome.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo cairo-gobject
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gtk-3 harfbuzz iconv intl lzma m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread util xcb xcb-render
WANTLIB += xcb-shm xml2 z
WANTLIB += ${MODPY_WANTLIB}

MODULES=	lang/python \
		x11/gnome

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=	devel/py-gobject3${MODPY_FLAVOR}

LIB_DEPENDS=	x11/gtk+3 \
		devel/libffi

RUN_DEPENDS=	x11/gnome/devhelp \
		devel/py-gobject3${MODPY_FLAVOR}

MODGNOME_TOOLS += desktop-file-utils docbook gtk-update-icon-cache
MODGNOME_TOOLS += gobject-introspection yelp

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS +=	--disable-webkit2gtk

DEBUG_PACKAGES =	${BUILD_PACKAGES}

post-install:
	rm ${PREFIX}/lib/glade/modules/*.{a,la}

.include <bsd.port.mk>
