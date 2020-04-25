# $OpenBSD: Makefile,v 1.28 2020/04/25 18:36:39 afresh1 Exp $

COMMENT=	complete modern object system for perl 5

MODULES=	cpan
DISTNAME=	Moose-2.1204
CATEGORIES=	devel
REVISION=	1

# perl
PERMIT_PACKAGE=	Yes

FIX_EXTRACT_PERMISSIONS =	Yes

WANTLIB += c perl

CPAN_AUTHOR=	ETHER

BUILD_DEPENDS=	devel/p5-Task-Weaken

RUN_DEPENDS=	devel/p5-Class-Load-XS \
		devel/p5-Data-OptList \
		devel/p5-Devel-GlobalDestruction \
		devel/p5-Devel-StackTrace \
		devel/p5-Dist-CheckConflicts \
		devel/p5-Eval-Closure \
		devel/p5-List-MoreUtils \
		devel/p5-MRO-Compat \
		devel/p5-Module-Runtime>=0.014 \
		devel/p5-Package-DeprecationManager>=0.13 \
		devel/p5-Package-Stash \
		devel/p5-Package-Stash-XS \
		devel/p5-Params-Util \
		devel/p5-Sub-Exporter \
		devel/p5-Sub-Name \
		devel/p5-Try-Tiny

TEST_DEPENDS=databases/p5-DBM-Deep \
		devel/p5-Class-Load \
		devel/p5-DateTime-Calendar-Mayan \
		devel/p5-DateTime-Format-MySQL \
		devel/p5-Declare-Constraints-Simple \
		devel/p5-Devel-GlobalDestruction \
		devel/p5-IO-String \
		devel/p5-Locale-US \
		devel/p5-Module-Refresh \
		devel/p5-Module-Runtime \
		devel/p5-MRO-Compat \
		devel/p5-Params-Coerce \
		devel/p5-Sub-Name \
		devel/p5-Test-Deep \
		devel/p5-Test-Fatal \
		devel/p5-Test-Output \
		devel/p5-Test-Requires \
		textproc/p5-Regexp-Common \
		www/p5-libwww \
		www/p5-URI

.include <bsd.port.mk>
