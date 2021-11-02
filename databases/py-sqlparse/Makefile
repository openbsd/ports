# $OpenBSD: Makefile,v 1.13 2021/11/02 00:00:17 sthen Exp $

COMMENT =		non-validating SQL parser

MODPY_EGG_VERSION =	0.4.1
DISTNAME =		sqlparse-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		databases

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests/

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
