# $OpenBSD: Makefile,v 1.2 2001/07/22 05:39:20 jsyn Exp $

COMMENT=		"http tunneling utility for ssh"

DISTNAME=		corkscrew-1.5
CATEGORIES=    		security net
NEED_VERSION=		1.425

HOMEPAGE=		http://www.agroman.net/corkscrew/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.agroman.net/corkscrew/

CONFIGURE_STYLE=	gnu 
CONFIGURE_ENV=		CC="${CC}" CFLAGS="${CFLAGS}"

WRKDIST=		${WRKDIR}/corkscrew

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/corkscrew
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/corkscrew
	${INSTALL_DATA} ${WRKSRC}/ChangeLog ${PREFIX}/share/doc/corkscrew

.include <bsd.port.mk>
