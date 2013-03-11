# $OpenBSD: Makefile,v 1.13 2013/03/11 10:50:22 espie Exp $

COMMENT= 	test functions for exception based code

MODULES=	cpan
DISTNAME=	Test-Exception-0.31
REVISION=	0
CATEGORIES=	devel
USE_GROFF=	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS= 		devel/p5-Sub-Uplevel
TEST_DEPENDS=	devel/p5-Pod-Coverage \
			devel/p5-IO-String

.include <bsd.port.mk>
