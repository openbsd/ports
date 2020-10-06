# $OpenBSD: Makefile,v 1.5 2020/10/06 16:52:25 landry Exp $

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

# make sure we dont pickup minizip from ports as its not the same
CONFIGURE_ARGS+=-DASSIMP_BUILD_MINIZIP:bool=true
MODULES =	devel/cmake

BUILD_DEPENDS =	devel/boost

NO_TEST =	Yes

.include <bsd.port.mk>
