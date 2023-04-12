COMMENT =	test suite using WWW::Mechanize

DISTNAME =	Test-WWW-Mechanize-1.60

CATEGORIES =	www devel

# Artistic 2.0
PERMIT_PACKAGE =	Yes

MODULES =		cpan

# Can use p5-HTML-Tidy5 when available
RUN_DEPENDS =		devel/p5-Carp-Assert-More>=1.16 \
			devel/p5-Test-LongString>=0.15 \
			www/p5-HTML-Form \
			www/p5-HTML-Lint>=2.20 \
			www/p5-HTML-Parser \
			www/p5-HTTP-Message>=6.29 \
			www/p5-WWW-Mechanize>=1.68 \
			www/p5-libwww>=6.02
TEST_DEPENDS =		www/p5-HTTP-Server-Simple>=0.42 \
			www/p5-URI

MAKE_ENV =		TEST_POD=Yes

PKG_ARCH =		*

.include <bsd.port.mk>
