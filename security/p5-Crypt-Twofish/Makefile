# $OpenBSD: Makefile,v 1.22 2015/07/16 23:57:27 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	module to implement the Twofish cipher

MODULES=	cpan
DISTNAME=	Crypt-Twofish-2.17
CATEGORIES=	security
REVISION=	2

# perl
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c

TEST_DEPENDS=	security/p5-Crypt-CBC

.include <bsd.port.mk>
