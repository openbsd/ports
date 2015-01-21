# $OpenBSD: Makefile,v 1.16 2015/01/21 06:13:49 bentley Exp $

COMMENT=	check validity of Internet email addresses

MODULES=	cpan
DISTNAME=	Email-Valid-0.184
REVISION=	1
CATEGORIES=	mail

PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	mail/p5-Mail-Tools>=1.67
BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS=	net/p5-Net-Domain-TLD

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
