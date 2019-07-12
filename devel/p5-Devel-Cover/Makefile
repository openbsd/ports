# $OpenBSD: Makefile,v 1.19 2019/07/12 20:44:51 sthen Exp $

COMMENT =	code coverage metrics for Perl

MODULES =	cpan
DISTNAME =	Devel-Cover-1.25
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =		Yes

WANTLIB += c perl

RUN_DEPENDS =	devel/p5-Pod-Coverage \
		devel/p5-Test-Differences \
		textproc/p5-PPI-HTML \
		textproc/p5-Template \
		converters/p5-JSON-MaybeXS
TEST_DEPENDS =	devel/p5-Test-Warn

.include <bsd.port.mk>
