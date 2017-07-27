# $OpenBSD: Makefile,v 1.4 2017/07/27 09:55:45 sthen Exp $

COMMENT =	run SQL queries directly on PCAP files

DISTNAME =	packetq-1.4.0
REVISION =	0

CATEGORIES =	net

HOMEPAGE =	https://www.dns-oarc.net/tools/packetq

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m z
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES =	https://www.dns-oarc.net/files/packetq/

COMPILER =	gcc

CONFIGURE_STYLE = gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/packetq
	cp -r ${WRKSRC}/html ${PREFIX}/share/examples/packetq

.include <bsd.port.mk>
