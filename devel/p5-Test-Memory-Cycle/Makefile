# $OpenBSD: Makefile,v 1.16 2016/03/20 19:56:37 naddy Exp $

COMMENT= 	perl extension for emulating troublesome interfaces

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	Test-Memory-Cycle-1.06
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-Cycle

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
