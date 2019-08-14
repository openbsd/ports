# $OpenBSD: Makefile,v 1.1.1.1 2019/08/14 12:01:38 feinerer Exp $

COMMENT =	C++ math parser library

GH_ACCOUNT =	beltoforion
GH_PROJECT =	muparser
GH_TAGNAME =	v2.2.6.1

SHARED_LIBS =	muparser	0.0 # 2.2

CATEGORIES =	math

HOMEPAGE =	https://beltoforion.de/article.php?a=muparser

# MIT
PERMIT_PACKAGE =Yes

WANTLIB =	${COMPILER_LIBCXX} m

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

.include <bsd.port.mk>
