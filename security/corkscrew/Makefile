# $OpenBSD: Makefile,v 1.1.1.1 2001/06/23 15:14:40 lebel Exp $

COMMENT=		"http tunneling utility for ssh"

DISTNAME=		corkscrew-1.5
CATEGORIES=    		security net
NEED_VERSION=		1.414

HOMEPAGE=		http://www.agroman.net/corkscrew/

MAINTAINER=		Jason Peel <jsyn@nthought.com>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.agroman.net/corkscrew/

CONFIGURE_STYLE=	gnu 

WRKDIST=		${WRKDIR}/corkscrew

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/corkscrew
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/corkscrew
	${INSTALL_DATA} ${WRKSRC}/ChangeLog ${PREFIX}/share/doc/corkscrew

.include <bsd.port.mk>
