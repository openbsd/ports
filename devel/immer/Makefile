COMMENT =	immutable and persistent data structures for C++

GH_ACCOUNT =	arximboldi
GH_PROJECT =	immer
GH_TAGNAME =	v0.8.1
REVISION =	4

CATEGORIES =	devel

HOMEPAGE =	https://sinusoid.es/immer

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
