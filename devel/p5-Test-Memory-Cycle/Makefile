# $OpenBSD: Makefile,v 1.13 2013/03/11 10:50:22 espie Exp $

COMMENT= 	perl extension for emulating troublesome interfaces

MODULES=	cpan
USE_GROFF =	Yes

DISTNAME=	Test-Memory-Cycle-1.04
REVISION=	1
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-Cycle

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
