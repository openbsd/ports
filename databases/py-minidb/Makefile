# $OpenBSD: Makefile,v 1.5 2018/02/17 09:28:20 jasper Exp $

COMMENT =		simple SQLite3 store for Python objects

MODPY_EGG_VERSION =	2.0.2
DISTNAME =		minidb-${MODPY_EGG_VERSION}
PKGNAME =		py-minidb-${MODPY_EGG_VERSION}

CATEGORIES =		databases

HOMEPAGE =		http://thp.io/2010/minidb/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

TEST_DEPENDS =		devel/py-nose,python3

MODPY_VERSION = 	${MODPY_DEFAULT_VERSION_3}

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests-3

.include <bsd.port.mk>
