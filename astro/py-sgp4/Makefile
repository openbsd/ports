COMMENT =	Python implementation of SGP4 satellite tracking algorithm

MODPY_DISTV =	2.23

DISTNAME =	sgp4-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	2

CATEGORIES =	astro

HOMEPAGE =	https://github.com/brandon-rhodes/python-sgp4

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

COMPILER =	base-clang ports-gcc

MODULES =	lang/python
MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes
MODPY_PYTEST_ARGS = sgp4/tests.py

RUN_DEPENDS =	math/py-numpy

.include <bsd.port.mk>
