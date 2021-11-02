# $OpenBSD: Makefile,v 1.12 2021/11/02 00:00:47 sthen Exp $

COMMENT =		curses-like terminal wrapper

MODPY_EGG_VERSION =	0.3.1
DISTNAME =		curtsies-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		1

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-blessings${MODPY_FLAVOR} \
			devel/py-wcwidth${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR} \
			devel/py-pyte${MODPY_FLAVOR}

.include <bsd.port.mk>
