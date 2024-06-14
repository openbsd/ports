COMMENT=	implementation of the RFC 9000 QUIC protocol

V=		1.6.0
DISTNAME=	ngtcp2-$V

SHARED_LIBS+=	ngtcp2			4.0	# 18.0
SHARED_LIBS+=	ngtcp2_crypto_quictls	0.1	# 4.0

CATEGORIES=	net

MAINTAINER=	Theo Buehler <tb@openbsd.org>

HOMEPAGE=	https://nghttp2.org/ngtcp2/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB +=	crypto ssl

SITES=		https://github.com/ngtcp2/ngtcp2/releases/download/v$V/

SEPARATE_BUILD=		Yes
DEBUG_PACKAGES=		${BUILD_PACKAGES}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-openssl

.include <bsd.port.mk>
