# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:22 espie Exp $

COMMENT= 	test output of other modules

MODULES=	cpan
DISTNAME=	Test-Output-0.16
REVISION=	1
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-Sub-Exporter \
			devel/p5-Test-Tester

MAKE_ENV=		TEST_POD=Yes
.include <bsd.port.mk>
