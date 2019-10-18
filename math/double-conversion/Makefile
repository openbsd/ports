# $OpenBSD: Makefile,v 1.2 2019/10/18 10:39:09 cwen Exp $

COMMENT=	binary-decimal and decimal-binary routines for IEEE doubles

CATEGORIES=	math

GH_ACCOUNT=	google
GH_PROJECT=	double-conversion
GH_TAGNAME=	v3.1.5

SHARED_LIBS +=  double-conversion         0.0 # 0.0

# BSD3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} m

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON \
			-DBUILD_TESTING=ON

.include <bsd.port.mk>
