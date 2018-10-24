# $OpenBSD: Makefile,v 1.31 2018/10/24 14:27:59 sthen Exp $

COMMENT=	search engine library

V=		1.4.5
PORTROACH=	limitw:1,even
DISTNAME=	xapian-core-${V}
REVISION=	0

SHARED_LIBS +=  xapian	4.0	# .28.2

CATEGORIES=	databases textproc

HOMEPAGE=	http://xapian.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m ${COMPILER_LIBCXX} z uuid

MASTER_SITES=	http://oligarchy.co.uk/xapian/${V}/
EXTRACT_SUFX=	.tar.xz

# -std=gnu++11
COMPILER=       base-clang ports-gcc base-gcc

LIB_DEPENDS=	sysutils/e2fsprogs>=1.42.7

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		CXXFLAGS="${CXXFLAGS} -Wno-redundant-decls" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.arch.mk>
# amd64-capable CPUs all have SSE
.if !${ARCH:Mamd64}
CONFIGURE_ARGS+= --disable-sse
.endif

post-configure:
	sed -i 's/^#define HAVE_TIMER_CREATE 1$$//' ${WRKSRC}/config.h
	${SUBST_CMD} ${WRKSRC}/cmake/xapian-config.cmake.in

.include <bsd.port.mk>
