# $OpenBSD: Makefile,v 1.2 2018/04/23 23:07:24 bcallah Exp $

COMMENT =	open asset import library
CATEGORIES =	multimedia

SHARED_LIBS +=  assimp                    0.1 # 3.4

GH_ACCOUNT =	assimp
GH_PROJECT =	assimp
GH_TAGNAME =	v4.1.0

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
