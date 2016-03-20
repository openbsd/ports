# $OpenBSD: Makefile,v 1.26 2016/03/20 19:56:59 naddy Exp $

COMMENT=	interface to the Blowfish encryption algorithm

MODULES=	cpan
DISTNAME=	Crypt-Blowfish-2.14
CATEGORIES=	security
REVISION=	2

# perl
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c perl

TEST_DEPENDS=	security/p5-Crypt-CBC

.include <bsd.port.mk>
