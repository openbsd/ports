PORTROACH=		limit:^2\.66

# g++3 chokes on the code
NOT_FOR_ARCHS=		${GCC3_ARCHS}

COMMENT=		C++ interface for glib2

GNOME_PROJECT=		glibmm
GNOME_VERSION=		2.66.2
PKGNAME=		glib2mm-${GNOME_VERSION}

SHARED_LIBS += glibmm_generate_extra_defs-2.4 13.4 # 1.3.0
SHARED_LIBS += glibmm-2.4                15.4 # 1.3.0
SHARED_LIBS += giomm-2.4                 14.3 # 1.3.0

CATEGORIES=		devel

HOMEPAGE=		https://www.gtkmm.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += sigc-2.0

MODULES=		devel/meson \
			x11/gnome

# c++11
COMPILER=		base-clang ports-gcc

# clang-format
BUILD_DEPENDS=		devel/llvm

LIB_DEPENDS=		devel/libsigc++-2 \
			devel/glib2

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
