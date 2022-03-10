COMMENT =	helpers to pass trusted data to untrusted environments

MODPY_EGG_VERSION = 2.1.1
DISTNAME =	itsdangerous-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	www devel

HOMEPAGE =	https://itsdangerous.palletsprojects.com

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes
MODPY_PYTEST =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =	devel/py-freezegun${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
