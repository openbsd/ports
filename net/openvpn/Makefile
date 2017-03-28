# $OpenBSD: Makefile,v 1.73 2017/03/28 22:16:37 jca Exp $

COMMENT=	easy-to-use, robust, and highly configurable VPN

DISTNAME=	openvpn-2.4.1
CATEGORIES=	net security

HOMEPAGE=	https://openvpn.net/index.php/open-source/

MAINTAINER=	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto lz4 lzo2 ssl

MASTER_SITES=	http://swupdate.openvpn.net/community/releases/

LIB_DEPENDS=	archivers/lzo2 \
		archivers/lz4

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

CONFIGURE_ARGS+=	--enable-password-save
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

SAMPLES_DIR=	${PREFIX}/share/examples/openvpn

# not enabled yet; OpenVPN's PolarSSL support currently requires 1.2 API
#FLAVORS=	polarssl
#FLAVOR?=
#.if ${FLAVOR:Mpolarssl}
#LIB_DEPENDS+=	security/polarssl
#WANTLIB+=	polarssl
#CONFIGURE_ARGS+= --with-crypto-library=polarssl
#.endif

post-install:
	cd ${WRKSRC}/sample/; \
	find sample-config-files sample-keys sample-scripts -type d \
	    -exec ${INSTALL_DATA_DIR} ${SAMPLES_DIR}/{} ';' ; \
	find sample-config-files sample-keys sample-scripts -type f \
	    '(' ! -name '*.orig' -a ! -name '.gitignore' ')' \
	    -exec ${INSTALL_DATA} {} ${SAMPLES_DIR}/{} ';'

.include <bsd.port.mk>
