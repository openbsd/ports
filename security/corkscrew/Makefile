# $OpenBSD: Makefile,v 1.6 2001/11/19 22:24:48 jsyn Exp $

COMMENT=		"HTTP tunneling utility for SSH"

DISTNAME=		corkscrew-2.0
CATEGORIES=    		security net
NEED_VERSION=		1.499

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
