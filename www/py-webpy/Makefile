# $OpenBSD: Makefile,v 1.13 2016/11/03 10:12:34 danj Exp $

COMMENT=	web framework for python

VERSION=	0.38
DISTNAME=	web.py-${VERSION}
PKGNAME=	py-webpy-${VERSION}
CATEGORIES=	www

MASTER_SITES=	${HOMEPAGE}/static/
HOMEPAGE=	http://webpy.org

# Public Domain, except wsgiserver
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python

SUBST_VARS=	VERSION

TEST_DEPENDS= databases/py-sqlite2 \
		${BASE_PKGPATH}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} ./web/test.py 
	cd ${WRKSRC} && ${MODPY_BIN} ./web/db.py SqliteTest

.include <bsd.port.mk>
