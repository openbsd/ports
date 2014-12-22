# $OpenBSD: Makefile,v 1.10 2014/12/22 17:48:59 benoit Exp $

COMMENT= 	test output of other modules

MODULES=	cpan
DISTNAME =	Test-Output-1.03
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS=		devel/p5-Sub-Exporter \
			devel/p5-Test-Tester \
			sysutils/p5-Capture-Tiny

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
