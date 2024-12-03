COMMENT=		XPM icon loader

DIST_TUPLE=		gnome ZanderBrown xpm-pixbuf d290a0c846687b22d2a8c5aaec83a6689f30e1c3 .
PKGNAME=		xpm-pixbuf-1.0
REVISION=		0

CATEGORIES=		graphics

SHARED_LIBS += xpm-pixbuf                0.0 # 0

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

# C11
COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

WANTLIB += gdk_pixbuf-2.0 glib-2.0 gobject-2.0

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		graphics/gdk-pixbuf2

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
