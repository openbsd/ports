# $OpenBSD: Makefile,v 1.2 2000/09/12 14:58:26 avsm Exp $

DISTNAME=		ucspi-unix-0.34
CATEGORIES=     	net
NEED_VERSION=		1.328

HOMEPAGE=		http://em.ca/~bruceg/ucspi-unix/
MAINTAINER=		avsm@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		http://em.ca/~bruceg/ucspi-unix/0.34/

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
