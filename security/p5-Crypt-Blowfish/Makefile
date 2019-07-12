# $OpenBSD: Makefile,v 1.27 2019/07/12 21:02:24 sthen Exp $

COMMENT=	interface to the Blowfish encryption algorithm

MODULES=	cpan
DISTNAME=	Crypt-Blowfish-2.14
CATEGORIES=	security
REVISION=	2

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

TEST_DEPENDS=	security/p5-Crypt-CBC

.include <bsd.port.mk>
