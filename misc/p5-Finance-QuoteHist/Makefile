# $OpenBSD: Makefile,v 1.1.1.1 2003/04/13 19:31:33 sturm Exp $

COMMENT=	"module to obtain historical financial quotes from exchanges"

DISTNAME=	Finance-QuoteHist-0.31
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	misc perl5

HOMEPAGE=	http://www.mojotoad.com/sisk/projects/Finance-QuoteHist/

MAINTAINER=	Andrew Dalgleish <openbsd@andrewdalgleish.dyndns.org>

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Finance/} \
		${HOMEPAGE}

# GPL/Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::converters/p5-DateManip \
		::www/p5-HTML-TableExtract \
		::www/p5-libwww
		
.include <bsd.port.mk>
