# $OpenBSD: Makefile,v 1.5 2004/08/03 12:12:41 xsa Exp $

COMMENT=	"logging product for Zope"

VERSION=	1.0.3
DISTNAME=	Logger-${VERSION:S/./-/g}
PKGNAME=	zope-logger-${VERSION}
CATEGORIES=	www

HOMEPAGE=	http://www.zope.org/Members/Zen/Logger/
MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
