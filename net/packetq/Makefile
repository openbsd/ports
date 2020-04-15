# $OpenBSD: Makefile,v 1.9 2020/04/15 14:34:50 fcambus Exp $

COMMENT =	run SQL queries directly on PCAP files

DISTNAME =	packetq-1.4.2
REVISION =	0

CATEGORIES =	net

HOMEPAGE =	https://www.dns-oarc.net/tools/packetq

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} c m z

MASTER_SITES =	https://www.dns-oarc.net/files/packetq/

COMPILER =	base-clang ports-gcc

CONFIGURE_STYLE = gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/packetq
	cp -r ${WRKSRC}/html ${PREFIX}/share/examples/packetq

.include <bsd.port.mk>
