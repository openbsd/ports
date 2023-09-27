COMMENT=	implementation of HTTP/3

V=		0.15.0
DISTNAME=	nghttp3-$V

SHARED_LIBS +=	nghttp3              2.0     # 9.0

CATEGORIES=	www

HOMEPAGE=	https://nghttp2.org/nghttp3/

# MIT
PERMIT_PACKAGE=	Yes

SITES=		https://github.com/ngtcp2/nghttp3/releases/download/v$V/

SEPARATE_BUILD=		Yes
DEBUG_PACKAGES=		${BUILD_PACKAGES}

COMPILER=		base-clang ports-gcc

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-lib-only

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
