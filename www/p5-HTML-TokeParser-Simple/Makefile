# $OpenBSD: Makefile,v 1.1.1.1 2006/11/05 16:32:14 espie Exp $

COMMENT= 	"simple interface to HTML::TokeParser"

DISTNAME=	HTML-TokeParser-Simple-3.15
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTML/}

RUN_DEPENDS=	::www/p5-HTML-Parser

REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Sub-Override \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage
CONFIGURE_STYLE=perl
PKG_ARCH=	*

.include <bsd.port.mk>
