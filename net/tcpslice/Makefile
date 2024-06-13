COMMENT=	tool for extracting and gluing pcap (tcpdump) files

V=		1.7
GH_ACCOUNT=	the-tcpdump-group
GH_PROJECT=	tcpslice
GH_COMMIT=	tcpslice-${V}

DISTNAME=	tcpslice-${V}
EPOCH=		0
CATEGORIES=	net

HOME_PAGE=	https://github.com/the-tcpdump-group/tcpslice

MAINTAINER=	Nigel Taylor <nigel@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes
WANTLIB=		c pcap

SEPARATE_BUILD=	Yes

AUTOCONF_VERSION=2.71
AUTOMAKE_VERSION=1.16

CONFIGURE_STYLE=autoreconf

NO_TEST=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/tcpslice.1 ${PREFIX}/man/man1/tcpslice.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tcpslice
	${INSTALL_DATA} ${WRKSRC}/CHANGES ${PREFIX}/share/doc/tcpslice
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/tcpslice

.include <bsd.port.mk>
