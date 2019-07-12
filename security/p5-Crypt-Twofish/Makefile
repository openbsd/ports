# $OpenBSD: Makefile,v 1.24 2019/07/12 21:02:25 sthen Exp $

COMMENT=	module to implement the Twofish cipher

MODULES=	cpan
DISTNAME=	Crypt-Twofish-2.17
CATEGORIES=	security
REVISION=	2

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

TEST_DEPENDS=	security/p5-Crypt-CBC

.include <bsd.port.mk>
