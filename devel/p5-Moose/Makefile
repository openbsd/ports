# $OpenBSD: Makefile,v 1.32 2022/01/29 22:48:54 afresh1 Exp $

COMMENT =	postmodern object system for Perl 5

MODULES =	cpan
DISTNAME =	Moose-2.2201
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

FIX_EXTRACT_PERMISSIONS =	Yes

WANTLIB =	c perl

CPAN_AUTHOR =	ETHER

BUILD_DEPENDS =	devel/p5-Dist-CheckConflicts>=0.02

RUN_DEPENDS =	devel/p5-Class-Load>=0.09 \
		devel/p5-Class-Load-XS>=0.01 \
		devel/p5-Data-OptList>=0.107 \
		devel/p5-Devel-GlobalDestruction \
		devel/p5-Devel-OverloadInfo>=0.005 \
		devel/p5-Devel-StackTrace>=2.03 \
		devel/p5-Dist-CheckConflicts>=0.02 \
		devel/p5-Eval-Closure>=0.04 \
		devel/p5-MRO-Compat>=0.05 \
		devel/p5-Module-Runtime>=0.014 \
		devel/p5-Package-DeprecationManager>=0.11 \
		devel/p5-Package-Stash>=0.32 \
		devel/p5-Package-Stash-XS>=0.24 \
		devel/p5-Params-Util>=1.0 \
		devel/p5-Sub-Exporter>=0.980 \
		devel/p5-Try-Tiny>=0.17

# Moose recommends
RUN_DEPENDS +=	devel/p5-Data-OptList

TEST_DEPENDS =	devel/p5-CPAN-Meta-Check>=0.011 \
		devel/p5-Test-CleanNamespaces>=0.13 \
		devel/p5-Test-Fatal>=0.001 \
		devel/p5-Test-Requires>=0.05

# Optional depends to avoid skipping tests
# Could test more with p5-Specio-Declare and p5-Types-Standard
TEST_DEPENDS +=	databases/p5-DBM-Deep \
		devel/p5-Algorithm-C3 \
		devel/p5-Data-Visitor \
		devel/p5-DateTime-Format-MySQL \
		devel/p5-Declare-Constraints-Simple \
		devel/p5-Module-Refresh \
		devel/p5-Moo \
		devel/p5-MooseX-MarkAsMethods \
		devel/p5-PadWalker \
		devel/p5-SUPER \
		devel/p5-Test-Deep \
		devel/p5-Test-LeakTrace \
		devel/p5-Test-Memory-Cycle \
		devel/p5-Test-Output \
		devel/p5-Test-Warnings

.include <bsd.port.mk>
