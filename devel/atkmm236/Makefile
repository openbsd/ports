COMMENT=		C++ bindings for the ATK library

GNOME_PROJECT=		atkmm
GNOME_VERSION=		2.36.1
PKGNAME=		atkmm236-${GNOME_VERSION}

CATEGORIES=		devel

SHARED_LIBS += atkmm-2.36                0.0 # 1.1.0

HOMEPAGE=		http://www.gtkmm.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} atk-1.0 glib-2.0 glibmm-2.68 gobject-2.0
WANTLIB += sigc-3.0

MODULES=		devel/meson \
			x11/gnome

# c++11
COMPILER=		base-clang ports-gcc

LIB_DEPENDS=		devel/glibmm268 \
			devel/atk

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
