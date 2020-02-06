# $OpenBSD: Makefile,v 1.21 2020/02/06 09:54:40 benoit Exp $

COMMENT =	module to obtain historical financial quotes from exchanges

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Finance-QuoteHist-1.28
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
