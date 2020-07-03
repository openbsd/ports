# $OpenBSD: Makefile,v 1.21 2020/07/03 21:44:49 sthen Exp $

COMMENT =	code coverage metrics for Perl

MODULES =	cpan
DISTNAME =	Devel-Cover-1.33
CATEGORIES =	devel
REVISION =	0

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
