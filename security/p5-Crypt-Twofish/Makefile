# $OpenBSD: Makefile,v 1.19 2014/03/19 07:23:57 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	module to implement the Twofish cipher

MODULES=	cpan
DISTNAME=	Crypt-Twofish-2.17
CATEGORIES=	security

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c

TEST_DEPENDS=	security/p5-Crypt-CBC

.include <bsd.port.mk>
