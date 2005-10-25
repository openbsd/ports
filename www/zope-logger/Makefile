# $OpenBSD: Makefile,v 1.7 2005/10/25 18:37:15 xsa Exp $

COMMENT=	"logging product for Zope"

VERSION=	1.0.3
DISTNAME=	Logger-${VERSION:S/./-/g}
PKGNAME=	zope-logger-${VERSION}
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
