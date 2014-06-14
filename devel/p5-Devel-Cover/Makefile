# $OpenBSD: Makefile,v 1.12 2014/06/14 23:24:55 sthen Exp $

COMMENT =	code coverage metrics for Perl
SHARED_ONLY =	Yes

MODULES =	cpan
DISTNAME =	Devel-Cover-1.00
CATEGORIES =	devel
REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c

RUN_DEPENDS =	devel/p5-Pod-Coverage \
		devel/p5-Test-Differences \
		textproc/p5-PPI-HTML \
		textproc/p5-Template
TEST_DEPENDS=devel/p5-Test-Warn

.include <bsd.port.mk>
