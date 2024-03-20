COMMENT =	perl memory analysis tool

DISTNAME =	Devel-MAT-0.53

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Commandable>=0.04 \
			devel/p5-Devel-MAT-Dumper>=0.48 \
			devel/p5-Feature-Compat-Try \
			devel/p5-File-ShareDir>=1.0 \
			devel/p5-Heap \
			devel/p5-Module-Pluggable \
			devel/p5-String-Tagged-Terminal>=0.03 \
			devel/p5-String-Tagged>=0.15 \
			devel/p5-Struct-Dumb>=0.07 \
			devel/p5-Syntax-Keyword-Match \
			textproc/p5-List-UtilsBy
TEST_DEPENDS =		devel/p5-Test2-Suite

CONFIGURE_STYLE =	modbuild

MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
