COMMENT =	io for scientific data formats

MODPY_DISTV =	2.37.0
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

TEST_DEPENDS =	devel/py-test-cov \
		sysutils/py-fsspec \
		sysutils/py-psutil

.include <bsd.port.mk>
