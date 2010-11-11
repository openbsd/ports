# $OpenBSD: Makefile,v 1.10 2010/11/11 12:35:19 sthen Exp $

COMMENT=	logging product for Zope

VERSION=	1.0.3
DISTNAME=	Logger-${VERSION:S/./-/g}
PKGNAME=	zope-logger-${VERSION}
REVISION=	1
CATEGORIES=	www

HOMEPAGE=	http://www.zope.org/Members/Zen/Logger/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}${VERSION:S/./-/g}/
EXTRACT_SUFX=	.tgz

MODULES=	www/zope

WRKDIST=	${WRKDIR}/Logger

INSTALL_LOC=	${MODZOPE_PRODUCTSDIR}/Logger
LOGGERITEMS=	Logger __init__

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_LOC}
.for f in ${LOGGERITEMS}
	${INSTALL_DATA} ${WRKDIST}/$f.{py,pyc} ${INSTALL_LOC} 
.endfor
	${INSTALL_DATA} ${WRKDIST}/README.txt ${INSTALL_LOC}

.include <bsd.port.mk>
