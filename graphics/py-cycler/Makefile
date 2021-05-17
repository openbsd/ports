# $OpenBSD: Makefile,v 1.7 2021/05/17 20:42:20 daniel Exp $

COMMENT =		composable style cycles

MODPY_EGG_VERSION =	0.10.0
DISTNAME =		cycler-${MODPY_EGG_VERSION}
PKGNAME =		py-cycler-${MODPY_EGG_VERSION}
CATEGORIES =		graphics
REVISION =		4

HOMEPAGE =		https://github.com/matplotlib/cycler

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR  =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
