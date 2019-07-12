# $OpenBSD: Makefile,v 1.12 2019/07/12 20:51:05 sthen Exp $

COMMENT=	test tool for slow HTTP reads/posts

DISTNAME =	slowhttptest-1.6
REVISION =	3

CATEGORIES=	www security

HOMEPAGE=	https://slowhttptest.googlecode.com/

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto m ssl ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${HOMEPAGE}files/

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=	gnu
LDFLAGS+=		-lcrypto
CONFIGURE_ENV=		LDFLAGS="${LDFLAGS}"
MAKE_FLAGS=		LDFLAGS="${LDFLAGS}"

.include <bsd.port.mk>
