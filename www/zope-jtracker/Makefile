# $OpenBSD: Makefile,v 1.2 2005/10/25 18:37:15 xsa Exp $

COMMENT=	"Zope-based issues tracker"

V=		1_11
DISTNAME=	JTracker-${V}
PKGNAME=	zope-${DISTNAME:S/_/./:L}
CATEGORIES=	www

HOMEPAGE=	http://www.dataflake.org/software/jtracker/

# ZPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}jtracker_${V:S/_/./g}/
EXTRACT_SUFX=	.tgz

MODULES=	www/zope

WRKDIST=	${WRKDIR}/JTracker

do-install:
	${INSTALL_DATA_DIR} ${MODZOPE_PRODUCTSDIR}
	cd ${WRKDIR}; tar cf - JTracker | tar xf - -C ${MODZOPE_PRODUCTSDIR}

.include <bsd.port.mk>
