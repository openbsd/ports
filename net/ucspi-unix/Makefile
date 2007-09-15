# $OpenBSD: Makefile,v 1.8 2007/09/15 22:37:00 merdely Exp $

COMMENT=	tools for building unix domain socket client/servers

DISTNAME=		ucspi-unix-0.34
CATEGORIES=     	net

HOMEPAGE=		http://em.ca/~bruceg/ucspi-unix/
MAINTAINER=		Anil Madhavapeddy <avsm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		c 

MASTER_SITES=		http://em.ca/~bruceg/ucspi-unix/0.34/

NO_REGRESS=		Yes

DOCFILES=		TODO README PROTOCOL NEWS
BINFILES=		unixserver unixclient

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ucspi-unix
	${INSTALL_SCRIPT} ${WRKSRC}/unixcat ${PREFIX}/bin
.for f in ${BINFILES}
	${INSTALL_PROGRAM} ${WRKSRC}/${f} ${PREFIX}/bin
.endfor	
.for f in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/${f} ${PREFIX}/share/doc/ucspi-unix
.endfor

.include <bsd.port.mk>
