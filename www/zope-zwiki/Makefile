# $OpenBSD: Makefile,v 1.10 2004/08/04 20:22:50 xsa Exp $

COMMENT=	"Wiki engine for Zope"

DISTNAME=	ZWiki-0.33.0
PKGNAME=	zope-${DISTNAME:L}
CATEGORIES=	www

HOMEPAGE=	http://zwiki.org/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}releases/
EXTRACT_SUFX=	.tgz

MODULES=	www/zope

WRKDIST=	${WRKDIR}/ZWiki

do-install:
	${INSTALL_DATA_DIR} ${MODZOPE_PRODUCTSDIR}
	cd ${WRKDIR}; tar cf - ZWiki | tar xf - -C ${MODZOPE_PRODUCTSDIR}

.include <bsd.port.mk>
