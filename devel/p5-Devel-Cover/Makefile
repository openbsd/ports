# $OpenBSD: Makefile,v 1.17 2017/05/06 21:36:02 benoit Exp $

COMMENT =	code coverage metrics for Perl

MODULES =	cpan
DISTNAME =	Devel-Cover-1.24
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c perl

RUN_DEPENDS =	devel/p5-Pod-Coverage \
		devel/p5-Test-Differences \
		textproc/p5-PPI-HTML \
		textproc/p5-Template
TEST_DEPENDS =	devel/p5-Test-Warn

.include <bsd.port.mk>
