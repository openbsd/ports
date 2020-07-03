# $OpenBSD: Makefile,v 1.6 2020/07/03 21:12:55 sthen Exp $

COMMENT =		composable style cycles

MODPY_EGG_VERSION =	0.10.0
DISTNAME =		cycler-${MODPY_EGG_VERSION}
PKGNAME =		py-cycler-${MODPY_EGG_VERSION}
CATEGORIES =		graphics
REVISION =		3

HOMEPAGE =		https://github.com/matplotlib/cycler

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
