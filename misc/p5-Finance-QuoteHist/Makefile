# $OpenBSD: Makefile,v 1.20 2019/07/12 20:47:52 sthen Exp $

COMMENT =	module to obtain historical financial quotes from exchanges

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Finance-QuoteHist-1.24
CATEGORIES =	misc

# GPL/Artistic License
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	converters/p5-DateManip \
		textproc/p5-Regexp-Common \
		textproc/p5-Text-CSV \
		textproc/p5-Text-CSV_XS \
		www/p5-HTML-TableExtract \
		www/p5-libwww

.include <bsd.port.mk>
