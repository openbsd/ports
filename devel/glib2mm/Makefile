# $OpenBSD: Makefile,v 1.90 2017/09/04 14:30:24 ajacoutot Exp $

# g++3 chokes on the code
NOT_FOR_ARCHS=		${GCC3_ARCHS}

COMMENT=		C++ interface for glib2

GNOME_PROJECT=		glibmm
GNOME_VERSION=		2.52.1
PKGNAME=		glib2mm-${GNOME_VERSION}

V=			2.4
SUBST_VARS=		V

SHARED_LIBS +=  glibmm_generate_extra_defs-2.4 13.2     # 4.0
SHARED_LIBS +=  glibmm-2.4           13.5     # 4.0
SHARED_LIBS +=  giomm-2.4            13.5     # 4.0

CATEGORIES=		devel

HOMEPAGE=		http://www.gtkmm.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 iconv
WANTLIB += intl m pcre pthread sigc-2.0 z
WANTLIB += ${COMPILER_LIBCXX}

MODULES=		x11/gnome

# c++11
COMPILER =		gcc

# clang-format
BUILD_DEPENDS=		devel/llvm

LIB_DEPENDS=		devel/libsigc++-2>=2.10.0 \
			devel/glib2>=${GNOME_VERSION}

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		M4='m4 -g' \
			ac_cv_path_DOXYGEN=""
CONFIGURE_ARGS=		--enable-static

.include <bsd.port.mk>
