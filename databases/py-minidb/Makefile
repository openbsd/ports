# $OpenBSD: Makefile,v 1.7 2019/07/12 20:44:00 sthen Exp $

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

TEST_DEPENDS =		devel/py-nose,python3

MODPY_VERSION = 	${MODPY_DEFAULT_VERSION_3}

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests-3

.include <bsd.port.mk>
