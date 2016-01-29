# $OpenBSD: Makefile,v 1.15 2016/01/29 10:25:04 benoit Exp $

COMMENT= 	perl extension for emulating troublesome interfaces

MODULES=	cpan

DISTNAME =	Test-Memory-Cycle-1.06
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-Cycle

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
