# $OpenBSD: Makefile,v 1.10 2017/07/29 13:23:22 bluhm Exp $

COMMENT=		partial dumping of data structures

DISTNAME =		Devel-PartialDump-0.18
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Moose \
			devel/p5-Sub-Exporter \
			devel/p5-namespace-clean \
			devel/p5-Class-Tiny

TEST_DEPENDS=		devel/p5-Devel-GlobalDestruction \
			devel/p5-Class-Load \
			devel/p5-Module-Runtime \
			devel/p5-MRO-Compat \
			devel/p5-Test-Warn

.include <bsd.port.mk>
