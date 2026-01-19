DPB_PROPERTIES=	parallel

COMMENT=	802.11 layer2 wireless network detector, sniffer, and IDS

V=		2025-09-R1
DISTNAME=	kismet-${V}
PKGNAME=	kismet-${V:S,-,,g}
CATEGORIES=	net security

HOMEPAGE=	https://www.kismetwireless.net/
SITES=		${HOMEPAGE}code/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto m mosquitto pcap pcre2-8
WANTLIB += rtlsdr sqlite3 ssl usb-1.0 util websockets z

# C++20
COMPILER=	base-clang ports-gcc

CONFIGURE_STYLE= autoreconf
AUTOCONF_VERSION= 2.71
AUTOMAKE_VERSION= 1.16
SYSCONFDIR=	${BASESYSCONFDIR}/kismet

CONFIGURE_ARGS=	--mandir=${PREFIX}/man \
		--with-suidgroup=_kismet \
		--disable-wifi-coconut

LDFLAGS_ports-gcc= -latomic
LDFLAGS=	-L${X11BASE}/lib -L${LOCALBASE}/lib ${LDFLAGS_${CHOSEN_COMPILER}}

CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS}"

NO_TEST=	Yes
USE_GMAKE=	Yes

FAKE_FLAGS+=	ETC="${WRKINST}${PREFIX}/share/examples/kismet"

LIB_DEPENDS=	comms/rtl-sdr \
		net/mosquitto \
		www/libwebsockets
RUN_DEPENDS=	comms/rtl_433 \
		net/wireshark,-text

INSTALL_TARGET=	install binsuidinstall

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kismet
	${INSTALL_DATA} ${WRKSRC}/README.SSL \
			${PREFIX}/share/doc/kismet

.include <bsd.port.mk>

.if ${CHOSEN_COMPILER} == ports-gcc
WANTLIB += atomic
.endif
