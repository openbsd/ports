# $OpenBSD: Makefile,v 1.15 2019/07/12 20:48:51 sthen Exp $

COMMENT=	tools for building unix domain socket client/servers

DISTNAME=		ucspi-unix-0.34
REVISION=		2
CATEGORIES=     	net

HOMEPAGE=		http://untroubled.org/ucspi-unix/

# GPL
PERMIT_PACKAGE=	Yes
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
