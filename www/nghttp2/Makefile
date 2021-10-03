# $OpenBSD: Makefile,v 1.52 2021/10/03 19:17:48 sthen Exp $

COMMENT=	library for HTTP/2

V=		1.45.1
DISTNAME=	nghttp2-$V

SHARED_LIBS +=	nghttp2              0.18     # 33.0

CATEGORIES=	www

HOMEPAGE=	https://nghttp2.org/

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://github.com/tatsuhiro-t/nghttp2/releases/download/v$V/

SEPARATE_BUILD=		Yes
DEBUG_PACKAGES=		${BUILD_PACKAGES}

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.71
# - examples have conflicts (libevent, libevent2, libev)
# - hpack-tools require a C++11 compiler (array)
# Both of these pull in additional libraries; deliberately trying to keep
# dependencies light for this port (dep path cmake->curl->nghttp2, don't
# want to restrict arch).
CONFIGURE_ARGS+=	--disable-examples \
			--disable-hpack-tools \
			--disable-python-bindings \
			--without-libxml2

# Tests don't do much unless cunit is present at configure time.
# As above, don't pull this in, to avoid restricting arch.
pre-test:
	@if ! [ -f ${LOCALBASE}/lib/libcunit.a ]; then echo; \
	    echo "====================================================="; \
	    echo "To run tests, install the cunit package and re-build."; \
	    echo "Dependency is not forced to avoid restricting arches."; \
	    echo "====================================================="; \
	    echo; exit 1; \
	fi

.include <bsd.port.mk>
