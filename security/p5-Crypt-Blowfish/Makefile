# $OpenBSD: Makefile,v 1.28 2020/07/03 21:45:40 sthen Exp $

COMMENT=	interface to the Blowfish encryption algorithm

MODULES=	cpan
DISTNAME=	Crypt-Blowfish-2.14
CATEGORIES=	security
REVISION=	3

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

TEST_DEPENDS=	security/p5-Crypt-CBC

.include <bsd.port.mk>
