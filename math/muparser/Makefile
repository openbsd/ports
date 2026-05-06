COMMENT =	C++ math parser library

GH_ACCOUNT =	beltoforion
GH_PROJECT =	muparser
GH_TAGNAME =	v2.3.5

SHARED_LIBS =	muparser	1.0 # 2.2

CATEGORIES =	math

HOMEPAGE =	https://beltoforion.de/en/muparser/

# MIT
PERMIT_PACKAGE =Yes

WANTLIB =	${COMPILER_LIBCXX} m

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

CONFIGURE_ARGS =-DENABLE_OPENMP=OFF

.include <bsd.port.mk>
