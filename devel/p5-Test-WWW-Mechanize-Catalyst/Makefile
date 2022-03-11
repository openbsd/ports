COMMENT=        Test-WWW-Mechanize extension for catalyst

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Test-WWW-Mechanize-Catalyst-0.62
CATEGORIES=     devel www

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Test-WWW-Mechanize>=1.14 \
		devel/p5-Moose \
		devel/p5-namespace-clean \
		www/p5-Catalyst-Runtime \
		www/p5-libwww \
		www/p5-WWW-Mechanize
TEST_DEPENDS=	devel/p5-Term-Size-Any \
		devel/p5-Test-Exception \
		devel/p5-Test-utf8 \
		www/p5-Catalyst-Plugin-Session \
		www/p5-Catalyst-Plugin-Session-State-Cookie

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
