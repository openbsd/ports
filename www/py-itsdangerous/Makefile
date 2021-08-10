# $OpenBSD: Makefile,v 1.16 2021/08/10 20:38:56 sthen Exp $

COMMENT = 	helpers to pass trusted data to untrusted environments

MODPY_EGG_VERSION = 1.1.0
DISTNAME =	itsdangerous-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	www devel

HOMEPAGE =	http://pythonhosted.org/itsdangerous/

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
