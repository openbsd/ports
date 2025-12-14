COMMENT =	read/write various image and video formats

MODPY_DISTV =	2.37.2
DISTNAME =	imageio-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	graphics

# BSD
PERMIT_PACKAGE = Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	math/py-numpy \
		graphics/py-Pillow

# needs network
TEST_DEPENDS =	devel/py-test-cov \
		sysutils/py-fsspec \
		sysutils/py-psutil
PORTHOME =	${WRKDIR}
MODPY_PYTEST_ARGS = -v

.include <bsd.port.mk>
