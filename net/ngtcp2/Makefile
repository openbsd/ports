COMMENT=	implementation of the RFC 9000 QUIC protocol

V=		0.13.1
DISTNAME=	ngtcp2-$V

SHARED_LIBS +=	ngtcp2			1.0      # 10.1
SHARED_LIBS +=	ngtcp2_crypto_openssl	0.0      # 4.0

CATEGORIES=	net

HOMEPAGE=	https://nghttp2.org/ngtcp2/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB +=	crypto ssl

MASTER_SITES=	https://github.com/ngtcp2/ngtcp2/releases/download/v$V/

SEPARATE_BUILD=		Yes
DEBUG_PACKAGES=		${BUILD_PACKAGES}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-openssl

# Don't pull this in as BUILD_DEPENDS to reduce dependencies on
# the path to building curl->cmake.
pre-test:
	@if ! [ -f ${LOCALBASE}/lib/libcunit.a ]; then echo; \
	    echo "====================================================="; \
	    echo "To run tests, install the cunit package and re-build."; \
	    echo "Dependency is not forced to avoid restricting arches."; \
	    echo "====================================================="; \
	    echo; exit 1; \
	fi

.include <bsd.port.mk>
