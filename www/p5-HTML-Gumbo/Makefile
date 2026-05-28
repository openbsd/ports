COMMENT =	HTML5 parser based on gumbo C library

DISTNAME =	HTML-Gumbo-0.19
CPAN_AUTHOR =	BPS

CATEGORIES =	www

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c gumbo perl

MODULES =		cpan

BUILD_DEPENDS =		devel/p5-Alien-LibGumbo>=0.03 \
			devel/p5-Module-Build>=0.42
LIB_DEPENDS =		www/gumbo
TEST_DEPENDS =		www/p5-HTML-Tree>=5.00

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
