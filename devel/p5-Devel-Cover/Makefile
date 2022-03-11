COMMENT =	code coverage metrics for Perl

MODULES =	cpan
DISTNAME =	Devel-Cover-1.36
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =		Yes

WANTLIB += c perl

RUN_DEPENDS =	devel/p5-Pod-Coverage \
		devel/p5-Test-Differences \
		textproc/p5-PPI-HTML \
		textproc/p5-Template \
		converters/p5-JSON-MaybeXS
TEST_DEPENDS =	devel/p5-Test-Warn \
		devel/p5-B-Debug

.include <bsd.port.mk>
