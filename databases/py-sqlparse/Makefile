# $OpenBSD: Makefile,v 1.10 2019/07/12 20:44:00 sthen Exp $

COMMENT =		non-validating SQL parser

MODPY_EGG_VERSION =	0.2.4
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

FLAVORS =		python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/sqlformat ${PREFIX}/bin/sqlformat${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
