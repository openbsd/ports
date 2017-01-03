# $OpenBSD: Makefile,v 1.2 2017/01/03 19:21:18 landry Exp $

COMMENT =		composable style cycles

MODPY_EGG_VERSION =	0.10.0
DISTNAME =		cycler-${MODPY_EGG_VERSION}
PKGNAME =		py-cycler-${MODPY_EGG_VERSION}
CATEGORIES =		graphics
REVISION =		0

HOMEPAGE =		https://github.com/matplotlib/cycler

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
