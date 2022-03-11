COMMENT= 	interface to RSS and Atom feeds

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	XML-Feed-0.61
CATEGORIES=	www textproc
CONFIGURE_STYLE=modbuild

# Perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	textproc/p5-XML-XPath \
		www/p5-URI

RUN_DEPENDS=	devel/p5-Class-ErrorHandler \
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

.include <bsd.port.mk>
