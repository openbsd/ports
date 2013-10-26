# $OpenBSD: Makefile,v 1.4 2013/10/26 13:25:12 benoit Exp $

COMMENT=	test tool for slow HTTP reads/posts

DISTNAME =	slowhttptest-1.5

CATEGORIES=	www security

HOMEPAGE=	https://slowhttptest.googlecode.com/

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto m ssl stdc++

MASTER_SITES=	${HOMEPAGE}files/

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=	gnu
LDFLAGS+=		-lcrypto
CONFIGURE_ENV=		LDFLAGS="${LDFLAGS}"
MAKE_FLAGS=		LDFLAGS="${LDFLAGS}"

.include <bsd.port.mk>
