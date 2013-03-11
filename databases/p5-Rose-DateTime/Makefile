# $OpenBSD: Makefile,v 1.7 2013/03/11 02:52:06 espie Exp $

COMMENT=	datetime helper functions for Rose

MODULES=	cpan
USE_GROFF =	Yes

DISTNAME=	Rose-DateTime-0.533
REVISION=	0
CATEGORIES=	databases devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-DateTime

TEST_DEPENDS=	databases/p5-Rose-Object

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
