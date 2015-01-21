# $OpenBSD: Makefile,v 1.8 2015/01/21 14:05:46 sthen Exp $

COMMENT=	datetime helper functions for Rose

MODULES=	cpan

DISTNAME=	Rose-DateTime-0.533
REVISION=	0
CATEGORIES=	databases devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-DateTime

TEST_DEPENDS=	databases/p5-Rose-Object

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
