# $OpenBSD: Makefile,v 1.23 2016/03/20 19:57:01 naddy Exp $

COMMENT=	module to implement the Twofish cipher

MODULES=	cpan
DISTNAME=	Crypt-Twofish-2.17
CATEGORIES=	security
REVISION=	2

# perl
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c perl

TEST_DEPENDS=	security/p5-Crypt-CBC

.include <bsd.port.mk>
