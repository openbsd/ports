COMMENT =		wavelet transform module

MODPY_DISTV =		1.5.0
DISTNAME =		pywavelets-${MODPY_DISTV}
PKGNAME =		py-PyWavelets-${MODPY_DISTV}
REVISION =		2

CATEGORIES =		math

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += m

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		mesonpy

BUILD_DEPENDS =		lang/cython \
			math/py-numpy

RUN_DEPENDS =		math/py-numpy

.include <bsd.port.mk>
