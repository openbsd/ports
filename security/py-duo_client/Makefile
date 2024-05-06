COMMENT =		Python library for interacting with Duo APIs

MODPY_EGG_VERSION =	4.4.0

REVISION =		2

DISTNAME =		duo_client-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security sysutils

MAINTAINER =		George Rosamond <george@nycbug.org>

# BSD3/Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
FLAVOR =		python3
FLAVORS =		python3

BUILD_DEPENDS =		devel/py-six${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-tz${MODPY_FLAVOR}


.include <bsd.port.mk>
