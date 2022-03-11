COMMENT =	wrapper class for the various JSON classes

DISTNAME =	JSON-Any-1.39
REVISION =	1
FIX_EXTRACT_PERMISSIONS=Yes

CATEGORIES =	converters

# Perl
PERMIT_PACKAGE = 	Yes

MODULES =		cpan

TEST_DEPENDS =		devel/p5-Test-Fatal \
			devel/p5-Test-Requires \
			devel/p5-Test-Warnings>=0.009 \
			devel/p5-Test-Without-Module

# Without JSON packages the module runs with JSON::PP from Perl base.
# But for testing check that it passes with any JSON package installed.
# Note that JSON and JSON::XS test are skipped.  Upstream will never
# fix this as JSON::Any has been deprecated by its author.
# https://rt.cpan.org/Public/Bug/Display.html?id=127753
TEST_DEPENDS +=		converters/p5-Cpanel-JSON-XS \
			converters/p5-JSON \
			converters/p5-JSON-DWIW \
			converters/p5-JSON-XS \
			devel/p5-YAML-Syck

PKG_ARCH =		*

.include <bsd.port.mk>
