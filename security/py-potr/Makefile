COMMENT =		pure Python Off-The-Record encryption

MODPY_DISTV =	1.0.2
#GH_ACCOUNT =		python-otr
#GH_PROJECT =		pure-python-otr
#GH_TAGNAME =		${MODPY_DISTV}

DISTNAME =		python-potr-${MODPY_DISTV}
PKGNAME =		py-potr-${MODPY_DISTV}
CATEGORIES =		security net
REVISION =		1

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

# no tests in pypi distfile
NO_TEST =		Yes

RUN_DEPENDS =		security/py-cryptodome

.include <bsd.port.mk>
