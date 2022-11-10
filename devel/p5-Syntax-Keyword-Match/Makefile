COMMENT =	match/case syntax for perl

DISTNAME =	Syntax-Keyword-Match-0.09

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl

MODULES =		cpan

BUILD_DEPENDS =		devel/p5-XS-Parse-Keyword>=0.14
RUN_DEPENDS =		devel/p5-XS-Parse-Keyword>=0.14

CONFIGURE_STYLE =	modbuild

MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
