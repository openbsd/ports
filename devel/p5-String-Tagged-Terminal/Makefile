COMMENT =	format terminal output using String::Tagged

DISTNAME =	String-Tagged-Terminal-0.08

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		converters/p5-Convert-Color \
			converters/p5-Convert-Color-XTerm \
			devel/p5-String-Tagged
TEST_DEPENDS =		devel/p5-Test2-Suite

CONFIGURE_STYLE =	modbuild

MAKE_ENV =		TEST_POD=Yes

PKG_ARCH =		*

MODCPAN_EXAMPLES =	Yes

.include <bsd.port.mk>
