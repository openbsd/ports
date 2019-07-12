# $OpenBSD: Makefile,v 1.6 2019/07/12 20:45:51 sthen Exp $

COMMENT =		python parser

MODPY_EGG_VERSION =	0.3.4
DISTNAME =		parso-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://parso.readthedocs.org

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	parso test

TEST_DEPENDS =		devel/py-docopt${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
