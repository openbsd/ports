# $OpenBSD: Makefile,v 1.99 2019/11/10 21:50:23 jca Exp $

COMMENT=	easy-to-use, robust, and highly configurable VPN

DISTNAME=	openvpn-2.4.8
REVISION=	0

CATEGORIES=	net security

HOMEPAGE=	https://openvpn.net/index.php/open-source/

MAINTAINER=	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB += c lz4 lzo2

MASTER_SITES=	https://swupdate.openvpn.org/community/releases/

LIB_DEPENDS=	archivers/lzo2 \
		archivers/lz4

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

DEBUG_PACKAGES=	${BUILD_PACKAGES}

FLAVORS=	mbedtls
FLAVOR?=

.if ${FLAVOR:Mmbedtls}
LIB_DEPENDS+=	security/polarssl
CONFIGURE_ARGS+= --with-crypto-library=mbedtls
WANTLIB += mbedcrypto mbedtls mbedx509 pthread
.else
WANTLIB += crypto ssl
.endif

SAMPLES_DIR=	${PREFIX}/share/examples/openvpn

post-install:
	cd ${WRKSRC}/sample/; \
	find sample-config-files sample-keys sample-scripts -type d \
	    -exec ${INSTALL_DATA_DIR} ${SAMPLES_DIR}/{} ';' ; \
	find sample-config-files sample-keys sample-scripts -type f \
	    '(' ! -name '*.orig' -a ! -name '.gitignore' ')' \
	    -exec ${INSTALL_DATA} {} ${SAMPLES_DIR}/{} ';'

.include <bsd.port.mk>
