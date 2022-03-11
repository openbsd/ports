COMMENT=	user interface builder for the gtk+3 toolkit

GNOME_PROJECT= 	glade
GNOME_VERSION=	3.38.2
REVISION=       1

CATEGORIES=	devel

SHARED_LIBS +=  gladeui-2                 2.0 # 0.0

HOMEPAGE=	http://glade.gnome.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 gjs glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gtk-3 intl m pango-1.0 pangocairo-1.0 xml2
WANTLIB += ${MODPY_WANTLIB}

MODULES=	devel/meson \
		lang/python \
		x11/gnome

# C++11
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS=	devel/py-gobject3${MODPY_FLAVOR}

LIB_DEPENDS=	x11/gtk+3 \
		x11/gnome/gjs

RUN_DEPENDS=	x11/gnome/devhelp \
		devel/py-gobject3${MODPY_FLAVOR}

MODGNOME_TOOLS += desktop-file-utils docbook gtk-update-icon-cache
MODGNOME_TOOLS += gobject-introspection yelp

CONFIGURE_ARGS +=	-Dwebkit2gtk=disabled

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=		-std=gnu99
.endif

.include <bsd.port.mk>
