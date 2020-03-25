# $OpenBSD: Makefile,v 1.8 2020/03/25 10:01:46 mariani Exp $

COMMENT =		python parser

MODPY_EGG_VERSION =	0.5.1
DISTNAME =		parso-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION = 		0

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
FLAVOR =		python3

.include <bsd.port.mk>
