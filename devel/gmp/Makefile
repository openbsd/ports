# $OpenBSD: Makefile,v 1.41 2020/02/21 23:36:54 naddy Exp $

COMMENT-main=	library for arbitrary precision arithmetic
COMMENT-cxx=	C++ library for arbitrary precision arithmetic

VERSION=	6.2.0
DISTNAME=	gmp-${VERSION}
MULTI_PACKAGES=	-main -cxx
PKGNAME-main=	gmp-${VERSION}
PKGNAME-cxx=	gmpxx-${VERSION}

SHARED_LIBS +=  gmp                  11.0     # 14.0
SHARED_LIBS +=  gmpxx                3.0      # 10.0
CATEGORIES=	devel math

HOMEPAGE=	https://gmplib.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>
EXTRACT_SUFX=	.tar.xz

# LGPLv3+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://gmplib.org/download/gmp/ \
		${MASTER_SITE_GNU:=gmp/}

WANTLIB-main=	# empty
WANTLIB-cxx=	gmp m ${COMPILER_LIBCXX}

LIB_DEPENDS-cxx=${FULLPKGNAME-main}:${BASE_PKGPATH},-main \
		${MODGCC4_CPPLIBDEP}

PSEUDO_FLAVORS=	no_cxx bootstrap
FLAVOR?=

DEBUG_PACKAGES=	${BUILD_PACKAGES}

CONFIGURE_STYLE=gnu
# Don't try to optimize for the local CPU submodel
CONFIGURE_ARGS+=--build=${MACHINE_ARCH}-unknown-openbsd${OSrev}

.include <bsd.port.arch.mk>
.if ${BUILD_PACKAGES:M-cxx}
COMPILER=	base-clang ports-gcc base-gcc
CONFIGURE_ARGS+=--enable-cxx
.endif

.include <bsd.port.mk>
