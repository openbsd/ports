# $OpenBSD: Makefile,v 1.1.1.1 2004/08/05 14:23:03 xsa Exp $

COMMENT=	"tool to manage groups of users within Zope"

DISTNAME=	GroupUserFolder-3.0
PKGNAME=	zope-${DISTNAME:L}
CATEGORIES=	www

HOMEPAGE=	http://ingeniweb.sourceforge.net/Products/GroupUserFolder/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

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
