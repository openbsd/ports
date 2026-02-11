COMMENT=	wavelet transform module

MODPY_DISTV=	1.9.0
DISTNAME=	pywavelets-${MODPY_DISTV}
PKGNAME=	py-PyWavelets-${MODPY_DISTV}

CATEGORIES=	math

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += m

MODULES=	lang/python
MODPY_PYBUILD=	mesonpy
MODPY_PI=	Yes

BUILD_DEPENDS=	lang/cython \
		math/py-numpy

RUN_DEPENDS=	math/py-numpy

MODPY_TEST_DIR= ${WRKINST}${MODPY_SITEPKG}
MODPY_PYTEST_ARGS= --pyargs pywt -v

.include <bsd.port.mk>
