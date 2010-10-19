# $OpenBSD: Makefile,v 1.9 2010/10/19 08:02:56 espie Exp $

COMMENT= 	simple interface to HTML::TokeParser

DISTNAME=	HTML-TokeParser-Simple-3.15
REVISION=	3
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
USE_GROFF =	Yes

RUN_DEPENDS=	::www/p5-HTML-Parser

REGRESS_DEPENDS=::devel/p5-Sub-Override
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
