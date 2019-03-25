# $OpenBSD: Makefile,v 1.8 2019/03/25 14:29:50 kn Exp $

COMMENT =		non-validating SQL parser

MODPY_EGG_VERSION =	0.2.4
DISTNAME =		sqlparse-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		databases

# BSD
PERMIT_PACKAGE_CDROM =	Yes

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
