# $OpenBSD: Makefile,v 1.1.1.1 2021/10/27 17:22:11 jasper Exp $

ONLY_FOR_ARCHS= i386 amd64

COMMENT=	improved version of afl
GH_ACCOUNT =	AFLplusplus
GH_PROJECT =	AFLplusplus
GH_TAGNAME =	3.14c
PKGNAME =	afl++-${GH_TAGNAME}
CATEGORIES=	devel

HOMEPAGE=	https://aflplus.plus/
MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB =		${COMPILER_LIBCXX} c m
USE_GMAKE=		Yes

MODULES =		lang/clang

MAKE_FLAGS =		NO_PYTHON=1
FAKE_FLAGS=		PREFIX="${TRUEPREFIX}"
TEST_TARGET=		test_build

.include <bsd.port.mk>
