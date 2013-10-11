# $OpenBSD: Makefile,v 1.14 2013/10/11 23:49:19 naddy Exp $

COMMENT= 	perl extension for emulating troublesome interfaces

MODULES=	cpan

DISTNAME=	Test-Memory-Cycle-1.04
REVISION=	1
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-Cycle

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
