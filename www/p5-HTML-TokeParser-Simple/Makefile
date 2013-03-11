# $OpenBSD: Makefile,v 1.12 2013/03/11 11:44:46 espie Exp $

COMMENT= 	simple interface to HTML::TokeParser

DISTNAME=	HTML-TokeParser-Simple-3.15
REVISION=	4
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
USE_GROFF =	Yes

RUN_DEPENDS=	www/p5-HTML-Parser

TEST_DEPENDS=devel/p5-Sub-Override
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
