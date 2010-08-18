# $OpenBSD: Makefile,v 1.23 2010/08/18 03:00:40 merdely Exp $

COMMENT=	record and analyze your meals for nutrient composition

V=		15.7
DISTNAME=	nut-${V}
PKGNAME=	nutdb-${V}
CATEGORIES=	biology
HOMEPAGE=	http://nut.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nut/}

NO_REGRESS=	Yes

ALL_TARGET=     nut

USE_GMAKE=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nut ${PREFIX}/bin/nutdb
	${INSTALL_MAN} ${WRKSRC}/nut.1 ${PREFIX}/man/man1/nutdb.1
	${INSTALL_DATA_DIR} ${PREFIX}/lib/nutdb
	${INSTALL_DATA} ${WRKSRC}/raw.data/* ${PREFIX}/lib/nutdb

.include <bsd.port.mk>
