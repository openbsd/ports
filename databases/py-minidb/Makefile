# $OpenBSD: Makefile,v 1.8 2019/11/08 14:48:10 kmos Exp $

COMMENT =		simple SQLite3 store for Python objects

MODPY_EGG_VERSION =	2.0.2
DISTNAME =		minidb-${MODPY_EGG_VERSION}
PKGNAME =		py-minidb-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		databases

HOMEPAGE =		http://thp.io/2010/minidb/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYTEST =		Yes

MODPY_VERSION = 	${MODPY_DEFAULT_VERSION_3}

.include <bsd.port.mk>
