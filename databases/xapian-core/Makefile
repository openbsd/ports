# $OpenBSD: Makefile,v 1.16 2013/11/11 21:25:54 sthen Exp $

COMMENT=	search engine library

V=		1.2.15
DISTNAME=	xapian-core-${V}

SHARED_LIBS +=  xapian	3.1	# .28.2

CATEGORIES=	databases textproc

HOMEPAGE=	http://xapian.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m stdc++ z uuid

MASTER_SITES=	http://oligarchy.co.uk/xapian/${V}/

LIB_DEPENDS=	sysutils/e2fsprogs>=1.42.7

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.arch.mk>
# amd64-capable CPUs all have SSE
.if !${ARCH:Mamd64}
CONFIGURE_ARGS+= --disable-sse
.endif

.include <bsd.port.mk>
