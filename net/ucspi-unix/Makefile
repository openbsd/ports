# $OpenBSD: Makefile,v 1.12 2013/03/11 11:35:57 espie Exp $

COMMENT=	tools for building unix domain socket client/servers

DISTNAME=		ucspi-unix-0.34
REVISION=		0
CATEGORIES=     	net

HOMEPAGE=		http://em.ca/~bruceg/ucspi-unix/
MAINTAINER=		Anil Madhavapeddy <avsm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=		http://em.ca/~bruceg/ucspi-unix/0.34/

NO_TEST=		Yes

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
