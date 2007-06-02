# $OpenBSD: Makefile,v 1.7 2007/06/02 15:32:00 simon Exp $

COMMENT=	"HTML widget and validation framework"

DISTNAME=	HTML-Widget-1.11
CATEGORIES=	www

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

RUN_DEPENDS=	::devel/p5-Class-Accessor-Chained \
		::devel/p5-Class-Data-Accessor \
		::devel/p5-Date-Calc \
		::devel/p5-Module-Pluggable-Fast \
		::mail/p5-Email-Valid \
		:p5-HTML-Tree->=3.23:www/p5-HTML-Tree \
		::www/p5-HTML-Scrubber 
REGRESS_DEPENDS=::devel/p5-Test-NoWarnings

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
