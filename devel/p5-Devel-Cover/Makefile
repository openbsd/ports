COMMENT =	code coverage metrics for Perl

DISTNAME =	Devel-Cover-1.44

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl

MODULES =		cpan

BUILD_DEPENDS =		converters/p5-JSON-MaybeXS \
			converters/p5-Sereal \
			devel/perltidy>=20060719 \
			devel/p5-Pod-Coverage>=0.06 \
			devel/p5-Test-Differences \
			textproc/p5-PPI-HTML>=1.07 \
			textproc/p5-Template>=2.00
RUN_DEPENDS =		converters/p5-JSON-MaybeXS \
			converters/p5-Sereal-Decoder \
			converters/p5-Sereal-Encoder \
			devel/p5-Class-XSAccessor \
			devel/p5-Moo \
			devel/p5-Pod-Coverage>=0.06 \
			devel/p5-Test-Differences \
			devel/p5-namespace-clean \
			devel/perltidy>=20060719 \
			sysutils/p5-Capture-Tiny \
			textproc/p5-PPI-HTML>=1.07 \
			textproc/p5-Template>=2.00 \
			www/p5-HTML-Parser>=3.69
TEST_DEPENDS =		databases/p5-DBM-Deep

# not ported yet
#BUILD_DEPENDS +=	www/p5-Browser-Open
#TEST_DEPENDS +=	www/p5-Browser-Open

.include <bsd.port.mk>
