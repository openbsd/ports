# $OpenBSD: Makefile,v 1.17 2013/03/11 11:41:27 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	module to implement the Twofish cipher

MODULES=	cpan
DISTNAME=	Crypt-Twofish-2.13
REVISION=	2
CATEGORIES=	security
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c

TEST_DEPENDS=	security/p5-Crypt-CBC

.include <bsd.port.mk>	
