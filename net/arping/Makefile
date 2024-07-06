COMMENT =	ARP level ping utility

DISTNAME =	arping-2.25
CATEGORIES =	net

HOMEPAGE =	https://www.habets.pp.se/synscan/programs_arping.html

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c m pcap lib/libnet-1.1/net=11

SITES =		http://www.habets.pp.se/synscan/files/

LIB_DEPENDS =	net/libnet/1.1

CFLAGS +=	-std=gnu99

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
