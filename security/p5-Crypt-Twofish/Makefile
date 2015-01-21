# $OpenBSD: Makefile,v 1.21 2015/01/21 06:23:35 bentley Exp $

SHARED_ONLY=	Yes

COMMENT=	module to implement the Twofish cipher

MODULES=	cpan
DISTNAME=	Crypt-Twofish-2.17
CATEGORIES=	security
REVISION=	1

# perl
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c

TEST_DEPENDS=	security/p5-Crypt-CBC

.include <bsd.port.mk>
