# $OpenBSD: Makefile,v 1.14 2015/09/01 07:04:04 benoit Exp $

COMMENT =	code coverage metrics for Perl
SHARED_ONLY =	Yes

MODULES =	cpan
DISTNAME =	Devel-Cover-1.20
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c

RUN_DEPENDS =	devel/p5-Pod-Coverage \
		devel/p5-Test-Differences \
		textproc/p5-PPI-HTML \
		textproc/p5-Template
TEST_DEPENDS=devel/p5-Test-Warn

.include <bsd.port.mk>
