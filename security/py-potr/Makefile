COMMENT =		pure Python Off-The-Record encryption

MODPY_EGG_VERSION =	1.0.2
#GH_ACCOUNT =		python-otr
#GH_PROJECT =		pure-python-otr
#GH_TAGNAME =		${MODPY_EGG_VERSION}

DISTNAME =		python-potr-${MODPY_EGG_VERSION}
PKGNAME =		py-potr-${MODPY_EGG_VERSION}
CATEGORIES =		security net
REVISION =		0

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

# no tests in pypi distfile
NO_TEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		security/py-cryptodome${MODPY_FLAVOR}

.include <bsd.port.mk>
