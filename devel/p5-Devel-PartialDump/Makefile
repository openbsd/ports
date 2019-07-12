# $OpenBSD: Makefile,v 1.13 2019/07/12 20:44:52 sthen Exp $

COMMENT=		partial dumping of data structures

DISTNAME=		Devel-PartialDump-0.20
CATEGORIES=		devel
FIX_EXTRACT_PERMISSIONS=Yes

# perl
PERMIT_PACKAGE=	Yes

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
			devel/p5-Test-Warnings

.include <bsd.port.mk>
