# $OpenBSD: Makefile,v 1.4 2019/11/24 19:48:08 bcallah Exp $

COMMENT =	open asset import library
CATEGORIES =	multimedia

SHARED_LIBS +=	assimp                    1.0 # 5.0

GH_ACCOUNT =	assimp
GH_PROJECT =	assimp
GH_TAGNAME =	v5.0.0

HOMEPAGE =	http://www.assimp.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m z

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/boost

NO_TEST =	Yes

.include <bsd.port.mk>
