COMMENT =	utility to make parameter checking easier

DISTNAME =	Params-Util-1.102

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl

MODULES =		cpan

BUILD_DEPENDS =		devel/p5-Config-AutoConf>=0.315 \
			sysutils/p5-Capture-Tiny

TEST_DEPENDS =		devel/p5-Test-LeakTrace

# use OpenBSD package instead of some included bundle
post-extract:
	rm -r -- ${WRKSRC}/inc/inc_Capture-Tiny
	rm -r -- ${WRKSRC}/inc/inc_Config-AutoConf

.include <bsd.port.mk>
