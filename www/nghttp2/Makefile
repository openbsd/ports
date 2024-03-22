COMMENT=	library for HTTP/2

V=		1.60.0
DISTNAME=	nghttp2-$V

SHARED_LIBS +=	nghttp2              0.22     # 41.0

CATEGORIES=	www

HOMEPAGE=	https://nghttp2.org/

# MIT
PERMIT_PACKAGE=	Yes

SITES=		https://github.com/tatsuhiro-t/nghttp2/releases/download/v$V/

SEPARATE_BUILD=		Yes
DEBUG_PACKAGES=		${BUILD_PACKAGES}

CONFIGURE_STYLE=	gnu
# - examples have conflicts (libevent, libevent2, libev)
# - hpack-tools require a C++11 compiler (array)
# Both of these pull in additional libraries; deliberately trying to keep
# dependencies light for this port (dep path nghttp2->curl->cmake)
CONFIGURE_ARGS+=	--disable-examples \
			--disable-hpack-tools \
			--disable-python-bindings \
			--without-libnghttp3 \
			--without-libngtcp2 \
			--without-libxml2

# Tests don't do much unless cunit is present at configure time.
# As above, don't pull this in, to keep dependencies light (and reduce
# risk of circular deps)
pre-test:
	@if ! [ -f ${LOCALBASE}/lib/libcunit.a ]; then echo; \
	    echo "====================================================="; \
	    echo "To run tests, install the cunit package and re-build."; \
	    echo "Dependency is not forced to keep dependencies light."; \
	    echo "====================================================="; \
	    echo; exit 1; \
	fi

.include <bsd.port.mk>
