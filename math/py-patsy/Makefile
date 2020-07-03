# $OpenBSD: Makefile,v 1.7 2020/07/03 21:12:57 sthen Exp $

COMMENT =		Python package for describing statistical models

MODPY_EGG_VERSION =	0.4.1
DISTNAME =		patsy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		2

# BSD
PERMIT_PACKAGE =	Yes

EXTRACT_SUFX =		.zip

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	patsy

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR} \
			math/py-scipy${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
