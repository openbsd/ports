# $OpenBSD: Makefile,v 1.10 2013/03/11 10:50:16 espie Exp $

COMMENT =	code coverage metrics for Perl
SHARED_ONLY =	Yes

MODULES =	cpan
DISTNAME =	Devel-Cover-0.78
REVISION =	0
CATEGORIES =	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c

RUN_DEPENDS =	devel/p5-Pod-Coverage \
		devel/p5-Test-Differences \
		textproc/p5-PPI-HTML \
		textproc/p5-Template
TEST_DEPENDS=devel/p5-Test-Warn

.include <bsd.port.mk>
