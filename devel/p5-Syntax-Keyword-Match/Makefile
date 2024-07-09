COMMENT =	match/case syntax for perl

DISTNAME =	Syntax-Keyword-Match-0.15

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl

MODULES =		cpan

BUILD_DEPENDS =		devel/p5-XS-Parse-Keyword>=0.36
RUN_DEPENDS =		devel/p5-XS-Parse-Keyword>=0.36
TEST_DEPENDS =		devel/p5-Test2-Suite>=0.000147

CONFIGURE_STYLE =	modbuild

MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
