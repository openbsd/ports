COMMENT =	parse informal natural language date/time strings

DISTNAME =	DateTime-Format-Natural-1.18

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Clone \
			devel/p5-DateTime \
			devel/p5-DateTime-HiRes \
			devel/p5-DateTime-TimeZone \
			devel/p5-List-MoreUtils \
			devel/p5-Params-Validate>=1.15 \
			devel/p5-boolean

# Recommended dependency
RUN_DEPENDS +=		devel/p5-Date-Calc

TEST_DEPENDS =		devel/p5-Module-Util \
			devel/p5-Test-MockTime-HiRes

CONFIGURE_STYLE =	modbuild

PKG_ARCH =		*

.include <bsd.port.mk>
