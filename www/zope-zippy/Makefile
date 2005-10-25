# $OpenBSD: Makefile,v 1.5 2005/10/25 18:37:15 xsa Exp $

COMMENT=	"insert random 'Zippy the Pinhead' quotes in your documents"

# unversioned, so impose a version
VERSION=	1.0	
DISTNAME=	Zippy
PKGNAME=	zope-zippy-${VERSION}
CATEGORIES=	www

HOMEPAGE=	http://www.zope.org/Members/michel/Products/Zippy/
MASTER_SITES=	${HOMEPAGE}
DIST_SUBDIR=	zope-zippy-${VERSION}
EXTRACT_SUFX=	.tgz	

# Zope Public License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	www/zope

WRKDIST=	${WRKDIR}/lib/python/Products/Zippy

INSTALL_LOC=	${MODZOPE_PRODUCTSDIR}/Zippy
ITEMS=		ZippyTag __init__

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_LOC}
.for f in ${ITEMS}
	${INSTALL_DATA} ${WRKDIST}/$f.{py,pyc} ${INSTALL_LOC}
.endfor
	${INSTALL_DATA} ${WRKDIST}/README.txt ${INSTALL_LOC}
	${INSTALL_DATA} ${WRKDIST}/yow.lines ${INSTALL_LOC}

.include <bsd.port.mk>
