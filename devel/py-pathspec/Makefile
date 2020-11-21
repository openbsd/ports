# $OpenBSD: Makefile,v 1.7 2020/11/21 14:28:01 benoit Exp $

COMMENT =	utility for gitignore style pattern matching of file paths

MODPY_EGG_VERSION = 0.8.1
DISTNAME =	pathspec-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

# Mozilla Public License v2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	pathspec/

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
