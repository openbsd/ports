# $OpenBSD: Makefile,v 1.1.1.1 2001/06/11 14:43:57 lebel Exp $

COMMENT=		"remote promiscous mode detection tool"

DISTNAME=		sentinel-0.8
CATEGORIES=    		security net
NEED_VERSION=		1.414

HOMEPAGE=		http://www.packetfactory.net/Projects/sentinel/

MAINTAINER=		Jason Peel <jsyn@nthought.com>

PERMIT_PACKAGE_CDROM=	Yes	
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes	
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.packetfactory.net/Projects/sentinel/ \
			http://packetstorm.securify.com/UNIX/IDS/sentinel/

LIB_DEPENDS=		net::net/libnet

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sentinel
	${INSTALL_DATA} ${WRKSRC}/Changelog ${PREFIX}/share/doc/sentinel
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/sentinel

.include <bsd.port.mk>
