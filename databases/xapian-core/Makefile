# $OpenBSD: Makefile,v 1.37 2020/03/04 23:31:20 sthen Exp $

COMMENT=	search engine library

V=		1.4.15
# XXX remove ac_cv_func_snprintf=snprintf with next release
PORTROACH=	limitw:1,even
DISTNAME=	xapian-core-${V}
# the other xapian ports should be kept in-sync:
#   databases/xapian-bindings
#   www/xapian-omega

SHARED_LIBS +=  xapian               5.1      # 40.0

CATEGORIES=	databases textproc

HOMEPAGE=	https://xapian.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c m ${COMPILER_LIBCXX} z uuid

MASTER_SITES=	https://oligarchy.co.uk/xapian/${V}/
EXTRACT_SUFX=	.tar.xz

# -std=gnu++11
COMPILER=       base-clang ports-gcc base-gcc

LIB_DEPENDS=	sysutils/e2fsprogs>=1.42.7

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		CXXFLAGS="${CXXFLAGS} -Wno-redundant-decls" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ENV+=	ac_cv_func_snprintf=snprintf

.include <bsd.port.arch.mk>
# amd64-capable CPUs all have SSE
.if !${ARCH:Mamd64}
CONFIGURE_ARGS+= --disable-sse
.endif

post-configure:
	sed -i 's/^#define HAVE_TIMER_CREATE 1$$//' ${WRKSRC}/config.h
	${SUBST_CMD} ${WRKSRC}/cmake/xapian-config.cmake.in

.include <bsd.port.mk>
