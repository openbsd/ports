# $OpenBSD: Makefile,v 1.8 2010/10/18 20:52:09 espie Exp $

COMMENT=	module to obtain historical financial quotes from exchanges

MODULES=	cpan
DISTNAME=	Finance-QuoteHist-0.32
REVISION=	0
CATEGORIES=	misc
USE_GROFF =	Yes

MAINTAINER=	Andrew Dalgleish <openbsd@ajd.net.au>

# GPL/Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::converters/p5-DateManip \
		::www/p5-HTML-TableExtract \
		::www/p5-libwww

pre-configure:
	@rm -f ${WRKSRC}/lib/Finance/QuoteHist/*.orig

.include <bsd.port.mk>
