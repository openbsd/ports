COMMENT =	C++ library providing transducers.

GH_ACCOUNT =	arximboldi
GH_PROJECT =	zug
GH_TAGNAME =	v0.1.1
REVISION =	3

CATEGORIES =	devel

HOMEPAGE =	https://sinusoid.es/zug

# BSL-1.0
PERMIT_PACKAGE =	Yes

# C++14
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		devel/catch2

# configure stage uses the compiler so can't mark as no build
#NO_BUILD =		Yes

do-build:

.include <bsd.port.mk>
