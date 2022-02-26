# $OpenBSD: Makefile,v 1.10 2022/02/26 20:52:52 sthen Exp $

COMMENT =		routines for operating on iterables beyond itertools

MODPY_EGG_VERSION =	8.12.0
DISTNAME =		more-itertools-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
