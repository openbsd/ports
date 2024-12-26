COMMENT =	library for calculating contours of 2D quadrilateral grids

MODPY_DISTV =	1.2.1
DISTNAME =	contourpy-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	math

HOMEPAGE =	https://github.com/contourpy/contourpy

# BSD-3
PERMIT_PACKAGE =	Yes

WANTLIB =	${COMPILER_LIBCXX} m
COMPILER=	base-clang ports-gcc

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	mesonpy

BUILD_DEPENDS =	devel/py-pybind11

RUN_DEPENDS =	math/py-numpy

TEST_DEPENDS =	devel/flake8 \
		devel/py-isort \
		graphics/py-matplotlib \
		graphics/py-Pillow

.include <bsd.port.mk>
