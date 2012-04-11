# $OpenBSD: Makefile,v 1.1.1.1 2012/04/11 13:37:27 sthen Exp $

COMMENT=	test tool for slow HTTP reads/posts

DISTNAME=	slowhttptest-1.4

CATEGORIES=	www security

HOMEPAGE=	http://slowhttptest.googlecode.com/

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c crypto m ssl stdc++

MASTER_SITES=	${HOMEPAGE}files/

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=	gnu
LDFLAGS+=		-lcrypto
CONFIGURE_ENV=		LDFLAGS="${LDFLAGS}"
MAKE_FLAGS=		LDFLAGS="${LDFLAGS}"

.include <bsd.port.mk>
