# $OpenBSD: Makefile,v 1.15 2015/04/21 10:51:26 benoit Exp $

COMMENT =	module to obtain historical financial quotes from exchanges

MODULES =	cpan
DISTNAME =	Finance-QuoteHist-1.22
CATEGORIES =	misc

# GPL/Artistic License
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	converters/p5-DateManip \
		textproc/p5-Regexp-Common \
		textproc/p5-Text-CSV \
		textproc/p5-Text-CSV_XS \
		www/p5-HTML-TableExtract \
		www/p5-libwww

pre-configure:
	@rm -f ${WRKSRC}/lib/Finance/QuoteHist/*.orig

.include <bsd.port.mk>
