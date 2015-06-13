# $OpenBSD: Makefile,v 1.9 2015/06/13 10:18:39 benoit Exp $

COMMENT=	datetime helper functions for Rose

MODULES=	cpan

DISTNAME =	Rose-DateTime-0.540
CATEGORIES=	databases devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-DateTime

TEST_DEPENDS =		databases/p5-Rose-Object

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
