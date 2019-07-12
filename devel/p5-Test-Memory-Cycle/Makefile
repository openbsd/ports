# $OpenBSD: Makefile,v 1.17 2019/07/12 20:45:10 sthen Exp $

COMMENT= 	perl extension for emulating troublesome interfaces

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	Test-Memory-Cycle-1.06
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-Cycle

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
