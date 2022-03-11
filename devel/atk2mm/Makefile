PORTROACH=		limit:^2\.28

COMMENT=		C++ binding for the ATK library

GNOME_PROJECT=		atkmm
GNOME_VERSION=		2.28.2
PKGNAME=		atk2mm-${GNOME_VERSION}

CATEGORIES=		devel

SHARED_LIBS += atkmm-1.6                 10.1 # 1.1.0

HOMEPAGE=		http://www.gtkmm.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} atk-1.0 glib-2.0 glibmm-2.4 gobject-2.0
WANTLIB += sigc-2.0

MODULES=		devel/meson \
			x11/gnome

# c++11
COMPILER=		base-clang ports-gcc

LIB_DEPENDS=		devel/glib2mm \
			devel/atk

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
