# $OpenBSD: Makefile,v 1.28 2021/11/02 00:00:17 sthen Exp $

COMMENT =		Object Relational Manager

MODPY_EGG_VERSION =	3.9.1
DISTNAME =		SQLObject-${MODPY_EGG_VERSION}
PKGNAME =		py-sqlobject-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		databases

HOMEPAGE =		http://www.sqlobject.org/

# LGPL
PERMIT_PACKAGE =	Yes

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	sqlobject/tests

MODULES =		lang/python
RUN_DEPENDS =		www/py-formencode${MODPY_FLAVOR} \
			devel/py-dispatcher${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR} \
			devel/py-py${MODPY_FLAVOR}

MODPY_SETUPTOOLS =	Yes

post-install:
	mv ${PREFIX}/bin/sqlobject-admin ${PREFIX}/bin/sqlobject-admin${MODPY_BIN_SUFFIX}
	mv ${PREFIX}/bin/sqlobject-convertOldURI ${PREFIX}/bin/sqlobject-convertOldURI${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
