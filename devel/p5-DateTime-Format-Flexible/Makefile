COMMENT =	flexibly parse strings and turn them into DateTime objects

DISTNAME =	DateTime-Format-Flexible-0.37

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-DateTime \
			devel/p5-DateTime-Format-Builder>=0.74 \
			devel/p5-DateTime-TimeZone
TEST_DEPENDS =		devel/p5-Test-Exception \
			devel/p5-Test-MockTime \
			devel/p5-Test-NoWarnings

MAKE_ENV=		TEST_POD=Yes

PKG_ARCH =		*

.include <bsd.port.mk>
