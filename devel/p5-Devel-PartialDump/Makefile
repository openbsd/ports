# $OpenBSD: Makefile,v 1.9 2017/05/11 13:38:33 benoit Exp $

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
			devel/p5-Test-use-ok \
			devel/p5-Test-Warn

.include <bsd.port.mk>
