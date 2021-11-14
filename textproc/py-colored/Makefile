# $OpenBSD: Makefile,v 1.8 2021/11/14 12:29:46 sthen Exp $

COMMENT =		simple library for color and formatting in terminal

MODPY_EGG_VERSION =	1.4.3
DISTNAME =		colored-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

# tests/test*.py can be run from the cli, but hang when run from ports
NO_TEST =		Yes

.include <bsd.port.mk>
