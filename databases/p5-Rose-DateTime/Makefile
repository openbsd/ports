# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:11 naddy Exp $

COMMENT=	datetime helper functions for Rose

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	Rose-DateTime-0.540
CATEGORIES=	databases devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-DateTime

TEST_DEPENDS =		databases/p5-Rose-Object

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
