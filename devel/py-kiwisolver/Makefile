COMMENT =		fast implementation of the Cassowary constraint solver

MODPY_DISTV =	1.3.2
DISTNAME =		kiwisolver-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		4

CATEGORIES =		devel

# BSD
PERMIT_PACKAGE =	Yes

# C++11
COMPILER =		base-clang ports-gcc ports-clang

WANTLIB =	${COMPILER_LIBCXX} ${MODPY_WANTLIB} m

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		devel/py-cppy

.include <bsd.port.mk>
