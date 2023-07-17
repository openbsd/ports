COMMENT =	web scraping toolkit using HTML and CSS Selectors or XPath

DISTNAME =	Web-Scraper-0.38

CATEGORIES =	www

MAINTAINER =	Wen Heping <wenheping2000@hotmail.com>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =	devel/p5-Universal-require \
		devel/p5-YAML \
		textproc/p5-XML-XPathEngine>=0.08 \
		www/p5-HTML-Selector-XPath>=0.03 \
		www/p5-HTML-Parser \
		www/p5-HTML-Tagset \
		www/p5-HTML-Tree>=3.23 \
		www/p5-HTML-TreeBuilder-XPath>=0.08 \
		www/p5-URI \
		www/p5-libwww
TEST_DEPENDS =	devel/p5-Test-Base \
		devel/p5-Test-Requires

CONFIGURE_STYLE =	modbuild tiny

PKG_ARCH =		*

.include <bsd.port.mk>
