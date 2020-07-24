# $OpenBSD: Makefile,v 1.27 2020/07/24 01:24:23 afresh1 Exp $

COMMENT =		date and time object for Perl

MODULES =		cpan
DISTNAME =		DateTime-1.52
EPOCH =			0
CATEGORIES =		devel

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Artistic 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

BUILD_DEPENDS =	devel/p5-Dist-CheckConflicts>=0.02

TEST_DEPENDS =	devel/p5-CPAN-Meta-Check>=0.011 \
		devel/p5-Test-Fatal \
		devel/p5-Test-Warnings>=0.005

RUN_DEPENDS =	devel/p5-DateTime-Locale>=1.06 \
		devel/p5-DateTime-TimeZone>=2.02 \
		devel/p5-Dist-CheckConflicts>=0.02 \
		devel/p5-Params-ValidationCompiler>=0.26 \
		devel/p5-Specio>=0.18 \
		devel/p5-Try-Tiny \
		devel/p5-namespace-autoclean>=0.19

.include <bsd.port.mk>
