# $OpenBSD: Makefile,v 1.4 2007/05/05 17:44:52 simon Exp $

COMMENT= 	"simple interface to HTML::TokeParser"

DISTNAME=	HTML-TokeParser-Simple-3.15
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

RUN_DEPENDS=	::www/p5-HTML-Parser

REGRESS_DEPENDS=::devel/p5-Sub-Override
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
