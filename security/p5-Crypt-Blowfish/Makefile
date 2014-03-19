# $OpenBSD: Makefile,v 1.22 2014/03/19 07:23:45 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to the Blowfish encryption algorithm

MODULES=	cpan
DISTNAME=	Crypt-Blowfish-2.14
CATEGORIES=	security

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c

TEST_DEPENDS=	security/p5-Crypt-CBC

.include <bsd.port.mk>
