# $OpenBSD: Makefile,v 1.26 2020/11/29 09:13:35 benoit Exp $

COMMENT=	module to implement the Twofish cipher

MODULES=	cpan
DISTNAME =	Crypt-Twofish-2.18
CATEGORIES=	security

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

TEST_DEPENDS=	security/p5-Crypt-CBC

.include <bsd.port.mk>
