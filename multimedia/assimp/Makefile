# $OpenBSD: Makefile,v 1.1.1.1 2017/11/14 06:29:25 bentley Exp $

COMMENT =	open asset import library
CATEGORIES =	multimedia

SHARED_LIBS +=  assimp                    0.0 # 3.3

GH_ACCOUNT =	assimp
GH_PROJECT =	assimp
GH_TAGNAME =	v4.0.1

HOMEPAGE =	http://www.assimp.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m z

# C++11
COMPILER =	base-clang ports-clang ports-gcc

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/boost

NO_TEST =	Yes

.include <bsd.port.mk>
