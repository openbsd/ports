# $OpenBSD: Makefile,v 1.9 2013/03/11 11:35:57 espie Exp $

COMMENT=	removes sensitive information from a tcpdump -w file

DISTNAME=	tcpdpriv-1.1.10
REVISION=	1
CATEGORIES=	net security

HOMEPAGE=	http://ita.ee.lbl.gov/html/contrib/tcpdpriv.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c pcap 

MASTER_SITES=		ftp://ita.ee.lbl.gov/software/
EXTRACT_SUFX=		.tar.Z

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"

CONFIGURE_STYLE=	simple
USE_GROFF =		Yes

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcpdpriv ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcpdpriv.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tcpdpriv
	${INSTALL_DATA} ${WRKSRC}/attack50.ps ${PREFIX}/share/doc/tcpdpriv

.include <bsd.port.mk>
