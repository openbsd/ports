# $OpenBSD: Makefile,v 1.1.1.1 2006/11/05 20:25:31 espie Exp $

COMMENT=	"HTML widget and validation framework"

DISTNAME=	HTML-Widget-1.10
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTML/}

RUN_DEPENDS=	::devel/p5-Class-Accessor-Chained \
		::devel/p5-Date-Calc \
		::devel/p5-Module-Pluggable-Fast \
		::mail/p5-Email-Valid \
		::www/p5-HTML-Tree \
		::www/p5-HTML-Scrubber 
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-NoWarnings \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
