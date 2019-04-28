# $OpenBSD: Makefile,v 1.4 2019/04/28 20:51:35 sthen Exp $

COMMENT =		python parser

MODPY_EGG_VERSION =	0.3.4
DISTNAME =		parso-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://parso.readthedocs.org

MAINTAINER =		Elias M. Mariani <marianielias@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	parso test

TEST_DEPENDS =		devel/py-docopt${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
