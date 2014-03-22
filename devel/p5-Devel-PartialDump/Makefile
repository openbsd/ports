# $OpenBSD: Makefile,v 1.6 2014/03/22 14:08:56 jasper Exp $

COMMENT=		partial dumping of data structures

DISTNAME=		Devel-PartialDump-0.13
REVISION=		0

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-Moose \
			devel/p5-Sub-Exporter \
			devel/p5-namespace-clean

TEST_DEPENDS=		devel/p5-Devel-GlobalDestruction \
			devel/p5-Class-Load \
			devel/p5-Module-Runtime \
			devel/p5-MRO-Compat \
			devel/p5-Test-use-ok


.include <bsd.port.mk>
