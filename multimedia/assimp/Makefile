# $OpenBSD: Makefile,v 1.3 2019/07/12 20:47:55 sthen Exp $

COMMENT =	open asset import library
CATEGORIES =	multimedia

SHARED_LIBS +=  assimp                    0.1 # 3.4

GH_ACCOUNT =	assimp
GH_PROJECT =	assimp
GH_TAGNAME =	v4.1.0

HOMEPAGE =	http://www.assimp.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m z

# C++11
COMPILER =	base-clang ports-clang ports-gcc

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/boost

NO_TEST =	Yes

.include <bsd.port.mk>
