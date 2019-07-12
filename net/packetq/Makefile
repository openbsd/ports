# $OpenBSD: Makefile,v 1.7 2019/07/12 20:48:42 sthen Exp $

COMMENT =	run SQL queries directly on PCAP files

DISTNAME =	packetq-1.4.1

CATEGORIES =	net

HOMEPAGE =	https://www.dns-oarc.net/tools/packetq

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

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
