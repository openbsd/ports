# $OpenBSD: Makefile,v 1.12 2019/07/12 20:43:57 sthen Exp $

COMMENT=	datetime helper functions for Rose

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	Rose-DateTime-0.540
CATEGORIES=	databases devel
FIX_EXTRACT_PERMISSIONS=Yes

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-DateTime

TEST_DEPENDS =		databases/p5-Rose-Object

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
