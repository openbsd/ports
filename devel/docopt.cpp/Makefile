COMMENT =	command-line interface description language, in c++

GH_ACCOUNT =	docopt
GH_PROJECT =	docopt.cpp
GH_TAGNAME =	v0.6.3

SHARED_LIBS +=  docopt                    0.0 # 0.0

CATEGORIES =	devel

HOMEPAGE =	http://docopt.org/

# MIT/Boost
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

# c++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
