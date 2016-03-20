# $OpenBSD: Makefile,v 1.19 2016/03/20 19:56:49 naddy Exp $

COMMENT =	module to obtain historical financial quotes from exchanges

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Finance-QuoteHist-1.24
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
