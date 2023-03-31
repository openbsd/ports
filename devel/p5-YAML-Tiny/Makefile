COMMENT =	read/write YAML files with as little code as possible

DISTNAME =	YAML-Tiny-1.74
FIX_EXTRACT_PERMISSIONS =	Yes

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

TEST_DEPENDS =		converters/p5-JSON-MaybeXS>=1.001000 \
			devel/p5-YAML \
			devel/p5-YAML-Syck \
			devel/p5-YAML-XS

MAKE_ENV =		AUTOMATED_TESTING=1

PKG_ARCH =		*

.include <bsd.port.mk>
