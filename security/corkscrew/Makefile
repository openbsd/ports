# $OpenBSD: Makefile,v 1.5 2001/09/14 15:38:50 brad Exp $

COMMENT=		"HTTP tunneling utility for SSH"

DISTNAME=		corkscrew-2.0
CATEGORIES=    		security net
NEED_VERSION=		1.435

HOMEPAGE=		http://www.agroman.net/corkscrew/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.agroman.net/corkscrew/

CONFIGURE_STYLE=	gnu 

DOCS=	README ChangeLog

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/corkscrew
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} \
		${PREFIX}/share/doc/corkscrew

.include <bsd.port.mk>
