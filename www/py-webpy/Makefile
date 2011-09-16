# $OpenBSD: Makefile,v 1.10 2011/09/16 12:00:08 espie Exp $

COMMENT=	web framework for python

VERSION=	0.36
DISTNAME=	web.py-${VERSION}
PKGNAME=	py-webpy-${VERSION}
REVISION=	0
CATEGORIES=	www

MASTER_SITES=	${HOMEPAGE}/static/
HOMEPAGE=	http://webpy.org

# Public Domain, except wsgiserver
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/python

SUBST_VARS=	VERSION

REGRESS_DEPENDS= databases/py-sqlite2 \
		${BASE_PKGPATH}

do-regress:
	cd ${WRKSRC} && ${MODPY_BIN} ./web/test.py 
	cd ${WRKSRC} && ${MODPY_BIN} ./web/db.py SqliteTest

.include <bsd.port.mk>
