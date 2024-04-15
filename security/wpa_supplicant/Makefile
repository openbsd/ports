COMMENT=	IEEE 802.1X supplicant

DISTNAME=	wpa_supplicant-2.9
REVISION=	4
CATEGORIES=	security net

HOMEPAGE=	https://w1.fi/wpa_supplicant/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c pcap pcsclite pthread

LIB_DEPENDS=	security/pcsc-lite

SITES=		https://w1.fi/releases/

USE_GMAKE=	Yes
NO_TEST=	Yes
MAKE_FLAGS=	V=1
MAKE_ENV=	CC="${CC}" \
		CFLAGS="${CFLAGS}" \
		LIBS="-L${LOCALBASE}/lib ${LIBS}"

FLAVORS=	openssl
FLAVOR?=

CFLAGS+=	-I${LOCALBASE}/include/PCSC

.if ${FLAVOR:Mopenssl}
LIB_DEPENDS +=	security/openssl/3.2
CFLAGS +=	-Wno-deprecated-declarations -I${LOCALBASE}/include/eopenssl32
LIBS +=		-Wl,-rpath ${LOCALBASE}/lib/eopenssl32 -L${LOCALBASE}/lib/eopenssl32
WANTLIB +=	lib/eopenssl32/crypto lib/eopenssl32/ssl
.else
WANTLIB +=	crypto ssl
.endif

WRKSRC=		${WRKDIST}/wpa_supplicant

EXAMPLEDIR=	${PREFIX}/share/examples/wpa_supplicant

ALL_TARGET=	all eapol_test

post-extract:
	cp ${WRKSRC}/defconfig ${WRKSRC}/.config

post-patch:
	@${SUBST_CMD} ${WRKSRC}/.config

post-install:
	@#${INSTALL_PROGRAM} ${WRKBUILD}/wpa_priv ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKBUILD}/eapol_test ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/doc/docbook/*.5 ${PREFIX}/man/man5/
	${INSTALL_MAN} ${WRKBUILD}/doc/docbook/*.8 ${PREFIX}/man/man8/
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA}  ${WRKBUILD}/wpa_supplicant.conf \
		${EXAMPLEDIR}/wpa_supplicant.conf.dist
	${INSTALL_DATA}  ${FILESDIR}/wpa_supplicant.conf \
		${EXAMPLEDIR}/wpa_supplicant.conf

.include <bsd.port.mk>
