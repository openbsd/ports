# $OpenBSD: Makefile,v 1.18 2013/10/11 23:50:50 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	module to implement the Twofish cipher

MODULES=	cpan
DISTNAME=	Crypt-Twofish-2.13
REVISION=	2
CATEGORIES=	security

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c

TEST_DEPENDS=	security/p5-Crypt-CBC

.include <bsd.port.mk>	
