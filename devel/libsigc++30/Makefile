# $OpenBSD: Makefile,v 1.1.1.1 2019/09/07 15:51:00 ajacoutot Exp $

COMMENT=		callback framework for C++

GNOME_VERSION=		3.0.0
GNOME_PROJECT=		libsigc++
PKGNAME=		libsigc++30-${GNOME_VERSION}

CATEGORIES=		devel

SHARED_LIBS +=	sigc-3.0                  0.0 # 0.0

HOMEPAGE=		http://libsigc.sourceforge.net/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} m

MODULES=		x11/gnome

# c++11
COMPILER =		base-clang ports-gcc

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		M4='m4 -g' \
			ac_cv_path_DOT= \
			ac_cv_path_DOXYGEN=

.include <bsd.port.mk>
