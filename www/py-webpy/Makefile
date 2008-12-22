# $OpenBSD: Makefile,v 1.3 2008/12/22 23:43:11 jasper Exp $

COMMENT=	web framework for python

VERSION=	0.31
DISTNAME=	web.py-${VERSION}
PKGNAME=	py-webpy-${VERSION}
CATEGORIES=	www

MAINTAINER=	Benoit Chesneau <benoitc@metavers.net>

MASTER_SITES=	${HOMEPAGE}/static/
HOMEPAGE=	http://webpy.org

# Public Domain, except wsgiserver
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/python

SUBST_VARS=	VERSION

REGRESS_DEPENDS= ::databases/py-sqlite2

WRKDIST=	${WRKDIR}/webpy

post-install:
	${INSTALL} ${WRKDIST}/web/wsgiserver/LICENSE.txt \
		${WRKINST}${MODPY_SITEPKG}/web/wsgiserver/LICENSE.txt

do-regress:
	cd ${WRKSRC} && ${MODPY_BIN} ./test/alltests.py 
	cd ${WRKSRC} && ${MODPY_BIN} ./test/db.py SqliteTest

.include <bsd.port.mk>
