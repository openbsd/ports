COMMENT = 	interface to RSS and Atom feeds

DISTNAME =	XML-Feed-0.65

CATEGORIES =	www textproc

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Class-ErrorHandler \
			devel/p5-DateTime \
			devel/p5-DateTime-Format-Flexible \
			devel/p5-DateTime-Format-ISO8601 \
			devel/p5-DateTime-Format-Mail \
			devel/p5-DateTime-Format-Natural \
			devel/p5-DateTime-Format-W3CDTF \
			devel/p5-Module-Pluggable \
			textproc/p5-XML-LibXML>=1.66 \
			textproc/p5-XML-RSS>=1.47 \
			www/p5-Feed-Find \
			www/p5-HTML-Parser \
			www/p5-URI-Fetch \
			www/p5-XML-Atom>=0.38 \
			www/p5-libwww
TEST_DEPENDS =		devel/p5-Test-HasVersion \
			devel/p5-Test-Pod-Coverage>=1.04 \
			devel/p5-Test-Pod>=1.14 \
			textproc/p5-XML-RSS-LibXML \
			textproc/p5-XML-XPath \
			www/p5-URI

CONFIGURE_STYLE =	modbuild

PKG_ARCH =		*

.include <bsd.port.mk>
