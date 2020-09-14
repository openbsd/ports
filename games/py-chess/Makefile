# $OpenBSD: Makefile,v 1.1.1.1 2020/09/14 20:21:25 tracey Exp $

COMMENT =		pure Python chess library

MODPY_EGG_VERSION =	0.31.4

DISTNAME =		python-chess-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^python-/py-/}

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
