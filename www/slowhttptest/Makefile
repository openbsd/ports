# $OpenBSD: Makefile,v 1.2 2013/03/11 11:44:49 espie Exp $

COMMENT=	test tool for slow HTTP reads/posts

DISTNAME=	slowhttptest-1.4

CATEGORIES=	www security

HOMEPAGE=	http://slowhttptest.googlecode.com/

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
