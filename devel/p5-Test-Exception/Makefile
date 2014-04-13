# $OpenBSD: Makefile,v 1.14 2014/04/13 01:01:38 naddy Exp $

COMMENT= 	test functions for exception based code

MODULES=	cpan
DISTNAME=	Test-Exception-0.31
REVISION=	0
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS= 		devel/p5-Sub-Uplevel
TEST_DEPENDS=	devel/p5-Pod-Coverage \
			devel/p5-IO-String

.include <bsd.port.mk>
