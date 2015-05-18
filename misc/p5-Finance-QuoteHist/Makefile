# $OpenBSD: Makefile,v 1.16 2015/05/18 06:56:04 jasper Exp $

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

.include <bsd.port.mk>
