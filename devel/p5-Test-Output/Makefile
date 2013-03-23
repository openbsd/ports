# $OpenBSD: Makefile,v 1.9 2013/03/23 08:00:48 benoit Exp $

COMMENT= 	test output of other modules

MODULES=	cpan
DISTNAME =	Test-Output-1.01
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS=		devel/p5-Sub-Exporter \
			devel/p5-Test-Tester

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
