# $OpenBSD: Makefile,v 1.11 2020/10/02 19:19:16 solene Exp $

COMMENT =		simple SQLite3 store for Python objects

MODPY_EGG_VERSION =	2.0.4
DISTNAME =		minidb-${MODPY_EGG_VERSION}
PKGNAME =		py-minidb-${MODPY_EGG_VERSION}

CATEGORIES =		databases

HOMEPAGE =		https://thp.io/2010/minidb/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
