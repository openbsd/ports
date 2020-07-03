# $OpenBSD: Makefile,v 1.13 2020/07/03 21:44:37 sthen Exp $

COMMENT=	datetime helper functions for Rose

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	Rose-DateTime-0.540
CATEGORIES=	databases devel
FIX_EXTRACT_PERMISSIONS=Yes
REVISION =	0

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-DateTime

TEST_DEPENDS =		databases/p5-Rose-Object

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
