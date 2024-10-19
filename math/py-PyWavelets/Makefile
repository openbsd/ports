COMMENT =		wavelet transform module

MODPY_EGG_VERSION =	1.5.0
DISTNAME =		pywavelets-${MODPY_EGG_VERSION}
PKGNAME =		py-PyWavelets-${MODPY_EGG_VERSION}

CATEGORIES =		math

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += m

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		devel/meson-python \
			lang/cython${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR}

.include <bsd.port.mk>
