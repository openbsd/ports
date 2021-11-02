# $OpenBSD: Makefile,v 1.2 2021/11/02 00:01:13 sthen Exp $

COMMENT =		pure Python chess library

MODPY_EGG_VERSION =	0.31.4

DISTNAME =		python-chess-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^python-/py-/}
REVISION =		0

CATEGORIES =		games

HOMEPAGE =		https://github.com/niklasf/python-chess

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

# Tests not included in PyPI tarball
NO_TEST =		Yes

.include <bsd.port.mk>
