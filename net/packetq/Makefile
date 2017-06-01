# $OpenBSD: Makefile,v 1.1.1.1 2017/06/01 21:35:28 fcambus Exp $

COMMENT =	run SQL queries directly on PCAP files

DISTNAME =	packetq-1.3.0

CATEGORIES =	net

HOMEPAGE =	https://www.dns-oarc.net/tools/packetq

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m z

MASTER_SITES =	https://www.dns-oarc.net/files/packetq/

COMPILER =	gcc

CONFIGURE_STYLE = gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/packetq
	cp -r ${WRKSRC}/html ${PREFIX}/share/examples/packetq

.include <bsd.port.mk>
