# $OpenBSD: Makefile,v 1.14 2019/07/12 20:51:03 sthen Exp $

COMMENT=	web framework for python

VERSION=	0.38
DISTNAME=	web.py-${VERSION}
PKGNAME=	py-webpy-${VERSION}
CATEGORIES=	www

MASTER_SITES=	${HOMEPAGE}/static/
HOMEPAGE=	http://webpy.org

# Public Domain, except wsgiserver
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

SUBST_VARS=	VERSION

TEST_DEPENDS= databases/py-sqlite2 \
		${BASE_PKGPATH}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} ./web/test.py 
	cd ${WRKSRC} && ${MODPY_BIN} ./web/db.py SqliteTest

.include <bsd.port.mk>
