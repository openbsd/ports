COMMENT =		library for interacting with a U2F device over USB

MODPY_DISTV =		0.1.5
DISTNAME =		pyu2f-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-six

# XXX: needs fakefs
TEST_DEPENDS =		devel/py-mock

.include <bsd.port.mk>
