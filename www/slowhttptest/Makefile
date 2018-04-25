# $OpenBSD: Makefile,v 1.10 2018/04/25 20:13:04 naddy Exp $

COMMENT=	test tool for slow HTTP reads/posts

DISTNAME =	slowhttptest-1.6
REVISION =	2

CATEGORIES=	www security

HOMEPAGE=	https://slowhttptest.googlecode.com/

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto m ssl ${COMPILER_LIBCXX}

MASTER_SITES=	${HOMEPAGE}files/

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=	gnu
LDFLAGS+=		-lcrypto
CONFIGURE_ENV=		LDFLAGS="${LDFLAGS}"
MAKE_FLAGS=		LDFLAGS="${LDFLAGS}"

.include <bsd.port.mk>
