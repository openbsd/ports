# $OpenBSD: Makefile,v 1.1.1.1 2021/01/02 21:51:19 jca Exp $

COMMENT=		alternative formatting library for C and C++

GH_ACCOUNT=		fmtlib
GH_PROJECT=		fmt
GH_TAGNAME=		7.1.3

SHARED_LIBS=		fmt	0.0

CATEGORIES=		devel

MAINTAINER=		Ashton Fagg <ashton@fagg.id.au>

# MIT
PERMIT_PACKAGE=	Yes

# C++11
COMPILER=		base-clang ports-gcc
MODULES=		devel/cmake
WANTLIB+=		${COMPILER_LIBCXX}


CONFIGURE_ARGS+=	-DBUILD_SHARED_LIBS=on

.include <bsd.port.mk>
