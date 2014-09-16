# $OpenBSD: Makefile,v 1.18 2014/09/16 12:45:21 sthen Exp $

COMMENT=	search engine library

V=		1.2.15
PORTROACH=	limitw:1,even
DISTNAME=	xapian-core-${V}
REVISION=	0

SHARED_LIBS +=  xapian	3.1	# .28.2

CATEGORIES=	databases textproc

HOMEPAGE=	http://xapian.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m stdc++ z uuid

MASTER_SITES=	http://oligarchy.co.uk/xapian/${V}/

LIB_DEPENDS=	sysutils/e2fsprogs>=1.42.7

CONFIGURE_STYLE= gnu autoconf
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		LIBxapian_VERSION=${LIBxapian_VERSION}

AUTOCONF_VERSION=	2.68

.include <bsd.port.arch.mk>
# amd64-capable CPUs all have SSE
.if !${ARCH:Mamd64}
CONFIGURE_ARGS+= --disable-sse
.endif

.include <bsd.port.mk>
