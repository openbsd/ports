COMMENT =	execute code when leaving a block

DISTNAME =	Syntax-Keyword-Defer-0.10

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl

MODULES =		cpan

BUILD_DEPENDS =		devel/p5-XS-Parse-Keyword>=0.13
RUN_DEPENDS =		devel/p5-XS-Parse-Keyword>=0.13
TEST_DEPENDS =		devel/p5-Syntax-Keyword-Try>=0.18 \
			devel/p5-Test2-Suite

CONFIGURE_STYLE =	modbuild

MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
