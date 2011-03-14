# $OpenBSD: Makefile,v 1.2 2011/03/14 09:15:34 sthen Exp $

COMMENT=	tools to extend pipe capabilities

DISTNAME=	shunt-1.7.2
REVISION=	0
CATEGORIES=	sysutils

HOMEPAGE=	http://www.serice.net/shunt/

MAINTAINER=	Josh Grosse <josh@jggimi.homeip.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	c

USE_GMAKE=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/* /${PREFIX}/bin 
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/shunt
	${INSTALL_DATA} ${WRKSRC}/README.TXT ${PREFIX}/share/doc/shunt

.include <bsd.port.mk>

