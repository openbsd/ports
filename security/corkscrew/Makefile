# $OpenBSD: Makefile,v 1.8 2002/12/29 20:31:39 fgsch Exp $

COMMENT=		"HTTP tunneling utility for SSH"

DISTNAME=		corkscrew-2.0
CATEGORIES=    		security net

HOMEPAGE=		http://www.agroman.net/corkscrew/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# GPL
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
