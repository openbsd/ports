COMMENT=	module to obtain financial quotes from exchanges

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Finance-Quote-1.61
CATEGORIES=	misc

HOMEPAGE=	https://finance-quote.sourceforge.net

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS=	converters/p5-DateManip \
		converters/p5-JSON \
		devel/p5-DateTime \
		devel/p5-DateTime-Format-Strptime \
		misc/p5-Spreadsheet-XLSX \
		textproc/p5-String-Util \
		textproc/p5-Text-Template \
		www/p5-LWP-Protocol-https \
		www/p5-HTML-TableExtract \
		www/p5-HTML-TokeParser-Simple \
		www/p5-HTML-Tree \
		www/p5-HTTP-CookieJar \
		www/p5-LWP-Protocol-https \
		www/p5-Web-Scraper \
		www/p5-libwww
TEST_DEPENDS=	devel/p5-Date-Range \
		devel/p5-Date-Simple \
		devel/p5-DateTime-Format-ISO8601 \
		devel/p5-Test-Perl-Critic

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	Examples

# GPLv2 only
PERMIT_PACKAGE=	Yes

MAKE_ENV +=	TEST_POD=Yes
TEST_FLAGS =	TEST_AUTHOR=Tester

# uncomment for online checks, too many failures because of site changes, lot of downloads.
#TEST_FLAGS +=	ONLINE_TEST=true

.include <bsd.port.mk>
