# $OpenBSD: Makefile,v 1.47 2020/10/03 10:16:19 ajacoutot Exp $

PORTROACH=		limit:^2

COMMENT=		callback framework for C++

GNOME_VERSION=		2.10.4
GNOME_PROJECT=		libsigc++

CATEGORIES=		devel

SHARED_LIBS +=  sigc-2.0             4.2      # 0.0

API_V=			2.0
SUBST_VARS=		API_V

HOMEPAGE=		http://libsigc.sourceforge.net/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX}

MODULES=		devel/meson \
			x11/gnome

# c++11
COMPILER =		base-clang ports-gcc

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
