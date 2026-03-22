COMMENT=	search engine library

V=		2.0.0
PORTROACH=	limitw:1,even
DISTNAME=	xapian-core-${V}
# the other xapian ports should be kept in-sync:
#   databases/xapian-bindings
#   www/xapian-omega

SHARED_LIBS +=  xapian               7.0      # 45.0

CATEGORIES=	databases textproc

HOMEPAGE=	https://xapian.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c icudata icuuc m z

SITES=		https://oligarchy.co.uk/xapian/${V}/
EXTRACT_SUFX=	.tar.xz

# C++17 minimum
COMPILER=       base-clang ports-gcc
DEBUG_PACKAGES=	${BUILD_PACKAGES}

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		CXXFLAGS="${CXXFLAGS} -Wno-redundant-decls" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_header_uuid_uuid_h=false
# xapian is happy with libc uuid functions, but picks up libuuid if present

LIB_DEPENDS=	textproc/icu4c

# amd64-capable CPUs all have SSE
.if ${MACHINE_ARCH} != amd64
CONFIGURE_ARGS+= --disable-sse
.endif

post-configure:
	sed -i 's/^#define HAVE_TIMER_CREATE 1$$//' ${WRKSRC}/config.h
	${SUBST_CMD} ${WRKSRC}/cmake/xapian-config.cmake.in

.include <bsd.port.mk>
