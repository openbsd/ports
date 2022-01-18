# $OpenBSD: Makefile,v 1.19 2022/01/18 00:23:57 daniel Exp $

COMMENT =		configuration system for Python applications

MODPY_EGG_VERSION =	5.1.1
DISTNAME =		traitlets-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://ipython.org/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	traitlets

.include <bsd.port.mk>
