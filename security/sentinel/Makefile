# $OpenBSD: Makefile,v 1.9 2002/05/13 08:36:33 jsyn Exp $

COMMENT=		"remote promiscous mode detection tool"

DISTNAME=		sentinel-1.0
CATEGORIES=    		security net
NEED_VERSION=		1.528

HOMEPAGE=		http://www.packetfactory.net/Projects/sentinel/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes	
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes	
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.packetfactory.net/Projects/sentinel/ \
			${MASTER_SITE_PACKETSTORM:=UNIX/IDS/sentinel/}

LIB_DEPENDS=		net::net/libnet

WRKDIST=		${WRKDIR}/sentinel

ALL_TARGET=		sentinel
MAKE_FLAGS=		CC="${CC}" CFLAGS='${CFLAGS} -Wall -I. \
			 -I${LOCALBASE}/include `libnet-config --defines`'

NO_REGRESS=		Yes


do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sentinel ${PREFIX}/bin/sentinel
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sentinel
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/sentinel

.include <bsd.port.mk>
