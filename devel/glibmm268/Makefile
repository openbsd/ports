COMMENT=		C++ API for parts of GLib

GNOME_PROJECT=		glibmm
GNOME_VERSION=		2.70.0
PKGNAME=		glibmm268-${GNOME_VERSION}

SHARED_LIBS += glibmm_generate_extra_defs-2.68 0.0 # 1.3.0
SHARED_LIBS += glibmm-2.68                0.0 # 1.3.0
SHARED_LIBS += giomm-2.68                 0.0 # 1.3.0

CATEGORIES=		devel

HOMEPAGE=		https://www.gtkmm.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += sigc-3.0

MODULES=		devel/meson \
			x11/gnome

# c++11
COMPILER=		base-clang ports-gcc

# clang-format
BUILD_DEPENDS=		devel/llvm

LIB_DEPENDS=		devel/glib2 \
			devel/libsigc++30

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
