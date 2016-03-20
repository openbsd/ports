# $OpenBSD: Makefile,v 1.16 2016/03/20 19:56:20 naddy Exp $

COMMENT =	code coverage metrics for Perl

MODULES =	cpan
DISTNAME =	Devel-Cover-1.21
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
