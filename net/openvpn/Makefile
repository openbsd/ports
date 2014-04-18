# $OpenBSD: Makefile,v 1.50 2014/04/18 11:54:32 sthen Exp $

COMMENT=	easy-to-use, robust, and highly configurable VPN

DISTNAME=	openvpn-2.3.2
CATEGORIES=	net security

HOMEPAGE=	http://openvpn.net/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto ssl lzo2

MASTER_SITES=	http://swupdate.openvpn.net/community/releases/

LIB_DEPENDS=	archivers/lzo2

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

CONFIGURE_ARGS+=	--enable-password-save
CONFIGURE_ENV=		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SAMPLES_DIR=	${PREFIX}/share/examples/openvpn

# not enabled yet; OpenVPN's PolarSSL support currently requires 1.2 API
#FLAVORS=	polarssl
#FLAVOR?=
.if ${FLAVOR:Mpolarssl}
LIB_DEPENDS+=	security/polarssl
WANTLIB+=	polarssl
CONFIGURE_ARGS+= --with-crypto-library=polarssl
.endif

post-install:
	${INSTALL_DATA_DIR} ${SAMPLES_DIR}/sample-config-files \
	    ${SAMPLES_DIR}/sample-keys ${SAMPLES_DIR}/sample-scripts
	find ${WRKSRC}/sample/sample-config-files/ -type f \! -name "*.orig" \
	    -exec ${INSTALL_DATA} {} ${SAMPLES_DIR}/sample-config-files \;
	${INSTALL_DATA} ${WRKSRC}/sample/sample-keys/* ${SAMPLES_DIR}/sample-keys
	${INSTALL_DATA} ${WRKSRC}/sample/sample-scripts/* ${SAMPLES_DIR}/sample-scripts

.include <bsd.port.mk>
