# $OpenBSD: Makefile,v 1.1.1.1 2001/01/08 05:23:42 obecian Exp $

DISTNAME=	tcpslice-1.1a3
CATEGORIES=	net
NEED_VERSION=	1.305
MASTER_SITES=	ftp://ftp.ee.lbl.gov/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	Brian Caswell <bmc@mitre.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=gnu

ALL_TARGET=	tcpslice
WRKDIST=	${WRKDIR}/tcpslice-1.1a3

DOCFILES=	CHANGES README

do-install:
	mkdir ${PREFIX}/share/doc/tcpslice
	${INSTALL_PROGRAM} ${WRKSRC}/tcpslice ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcpslice.1 ${PREFIX}/man/man1/tcpslice.1
.for file in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/tcpslice
.endfor

.include <bsd.port.mk>
