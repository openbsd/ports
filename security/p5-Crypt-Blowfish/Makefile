# $OpenBSD: Makefile,v 1.20 2013/03/11 11:41:26 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to the Blowfish encryption algorithm

MODULES=	cpan
DISTNAME=	Crypt-Blowfish-2.12
REVISION=	2
CATEGORIES=	security
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c

TEST_DEPENDS=	security/p5-Crypt-CBC

.include <bsd.port.mk>	
