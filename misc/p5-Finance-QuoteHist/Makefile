# $OpenBSD: Makefile,v 1.22 2020/07/03 21:45:30 sthen Exp $

COMMENT =	module to obtain historical financial quotes from exchanges

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Finance-QuoteHist-1.28
CATEGORIES =	misc
REVISION =	0

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
