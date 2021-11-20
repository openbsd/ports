# $OpenBSD: Makefile,v 1.14 2021/11/20 14:47:06 sthen Exp $

COMMENT =		non-validating SQL parser

MODPY_EGG_VERSION =	0.4.2
DISTNAME =		sqlparse-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

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
