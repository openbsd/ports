# $OpenBSD: Makefile,v 1.25 2020/07/03 21:45:41 sthen Exp $

COMMENT=	module to implement the Twofish cipher

MODULES=	cpan
DISTNAME=	Crypt-Twofish-2.17
CATEGORIES=	security
REVISION=	3

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

TEST_DEPENDS=	security/p5-Crypt-CBC

.include <bsd.port.mk>
