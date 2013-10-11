# $OpenBSD: Makefile,v 1.15 2013/10/11 23:49:59 naddy Exp $

COMMENT=	check validity of Internet email addresses

MODULES=	cpan
DISTNAME=	Email-Valid-0.184
REVISION=	0
CATEGORIES=	mail

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	mail/p5-Mail-Tools>=1.67
BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS=	net/p5-Net-Domain-TLD

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
