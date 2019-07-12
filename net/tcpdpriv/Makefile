# $OpenBSD: Makefile,v 1.13 2019/07/12 20:48:49 sthen Exp $

COMMENT=	removes sensitive information from a tcpdump -w file

DISTNAME=	tcpdpriv-1.1.10
REVISION=	2
CATEGORIES=	net security

HOMEPAGE=	http://ita.ee.lbl.gov/html/contrib/tcpdpriv.html

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c pcap 

MASTER_SITES=		http://ita.ee.lbl.gov/software/ \
			ftp://ita.ee.lbl.gov/software/
EXTRACT_SUFX=		.tar.Z

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS} -DARC4RANDOM"

CONFIGURE_STYLE=	simple

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcpdpriv ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcpdpriv.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tcpdpriv
	${INSTALL_DATA} ${WRKSRC}/attack50.ps ${PREFIX}/share/doc/tcpdpriv

.include <bsd.port.mk>
