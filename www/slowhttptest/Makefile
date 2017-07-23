# $OpenBSD: Makefile,v 1.8 2017/07/23 09:26:29 espie Exp $

COMMENT=	test tool for slow HTTP reads/posts

DISTNAME =	slowhttptest-1.6
REVISION =	0

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
