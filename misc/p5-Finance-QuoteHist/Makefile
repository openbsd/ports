# $OpenBSD: Makefile,v 1.4 2006/12/27 12:35:13 simon Exp $

COMMENT=	"module to obtain historical financial quotes from exchanges"

MODULES=	cpan
DISTNAME=	Finance-QuoteHist-0.32
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	misc

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

pre-install:
	@rm ${WRKSRC}/lib/Finance/QuoteHist/Generic.pm.orig
	@rm ${WRKSRC}/lib/Finance/QuoteHist/Yahoo.pm.orig

.include <bsd.port.mk>
