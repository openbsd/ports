COMMENT=	user interface builder for the gtk+3 toolkit

GNOME_PROJECT= 	glade
GNOME_VERSION=	3.40.0
REVISION=       5

CATEGORIES=	devel

SHARED_LIBS += gladeui-2                 2.0 # 13.1.0

HOMEPAGE=	http://glade.gnome.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gtk-3 intl m pango-1.0 pangocairo-1.0 xml2
WANTLIB += ${MODPY_WANTLIB}

MODULES=	devel/meson \
		lang/python \
		x11/gnome

# C++11
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS=	devel/py-gobject3${MODPY_FLAVOR}

LIB_DEPENDS=	x11/gtk+3

RUN_DEPENDS=	x11/gnome/devhelp \
		devel/py-gobject3${MODPY_FLAVOR}

MODGNOME_TOOLS += desktop-file-utils docbook gtk-update-icon-cache
MODGNOME_TOOLS += gobject-introspection yelp

CONFIGURE_ARGS +=	-Dwebkit2gtk=disabled

# XXX help XFCE on non-rust archs (i386)
# libxfce4ui -> glade -> gjs -> spidermonkeyXX -> rust
CONFIGURE_ARGS +=	-Dgjs=disabled

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
