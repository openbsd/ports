# $OpenBSD: Makefile,v 1.4 2005/10/25 18:37:15 xsa Exp $

COMMENT=	"tool to manage groups of users within Zope"

DISTNAME=	GroupUserFolder-3.2
PKGNAME=	zope-${DISTNAME:L}
CATEGORIES=	www

HOMEPAGE=	http://ingeniweb.sourceforge.net/Products/GroupUserFolder/

# ZPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=collective/}

MODULES=	www/zope

WRKDIST=	${WRKDIR}/GroupUserFolder

do-install:
	${INSTALL_DATA_DIR} ${MODZOPE_PRODUCTSDIR}
	cd ${WRKDIR}; \
		tar cf - GroupUserFolder | tar xf - -C ${MODZOPE_PRODUCTSDIR}

.include <bsd.port.mk>
