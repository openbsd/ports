COMMENT =		Python library for interacting with Duo APIs

MODPY_DISTV =	4.4.0

REVISION =		3

DISTNAME =		duo_client-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security sysutils

MAINTAINER =		George Rosamond <george@nycbug.org>

# BSD3/Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		devel/py-six
RUN_DEPENDS =		devel/py-six

TEST_DEPENDS =		devel/py-mock \
			devel/py-tz

.include <bsd.port.mk>
