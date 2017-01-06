# $OpenBSD: Makefile,v 1.4 2017/01/06 10:55:20 shadchin Exp $

COMMENT =		simple SQLite3 store for Python objects

MODPY_EGG_VERSION =	2.0.1
DISTNAME =		minidb-${MODPY_EGG_VERSION}
PKGNAME =		py-minidb-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		databases

HOMEPAGE =		http://thp.io/2010/minidb/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://thp.io/2010/minidb/

MODULES =		lang/python

TEST_DEPENDS =		devel/py-nose,python3

MODPY_VERSION = 	${MODPY_DEFAULT_VERSION_3}

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests-3

.include <bsd.port.mk>
