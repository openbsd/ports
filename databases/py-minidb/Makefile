# $OpenBSD: Makefile,v 1.12 2021/11/02 00:00:16 sthen Exp $

COMMENT =		simple SQLite3 store for Python objects

MODPY_EGG_VERSION =	2.0.4
DISTNAME =		minidb-${MODPY_EGG_VERSION}
PKGNAME =		py-minidb-${MODPY_EGG_VERSION}
REVISION =		0

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
