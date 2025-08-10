COMMENT =		Qt stylesheet generation utility for PyQT/PySide

MODPY_DISTV =		0.2.4
DISTNAME =		qstylizer-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

MAKE_ENV +=		PBR_VERSION=${MODPY_DISTV}

BUILD_DEPENDS =		devel/py-pbr

RUN_DEPENDS =		textproc/py-inflection>0.3.0,<1 \
			textproc/py-tinycss2>=0.5,<2

TEST_DEPENDS =		devel/py-test-mock

.include <bsd.port.mk>
