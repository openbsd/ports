# $OpenBSD: Makefile,v 1.50 2020/03/09 07:58:08 benoit Exp $

COMMENT =	ARP level ping utility

DISTNAME =	arping-2.21
CATEGORIES =	net

HOMEPAGE =	http://www.habets.pp.se/synscan/programs.php?prog=ARPing

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c m pcap lib/libnet-1.1/net=11

MASTER_SITES =	http://www.habets.pp.se/synscan/files/ \
		http://www.arcane-labs.net/download/OpenBSD/

LIB_DEPENDS =	net/libnet/1.1

CONFIGURE_STYLE = gnu
CONFIGURE_ENV = CFLAGS="${CFLAGS} -I${LOCALBASE}/include/libnet-1.1 \
		`libnet-config-1.1 --defines`" \
		LIBS="-L${LOCALBASE}/lib/libnet-1.1 -lnet"

DEBUG_PACKAGES = ${BUILD_PACKAGES}

pre-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/arping
		${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/arping

NO_TEST =	Yes

.include <bsd.port.mk>
