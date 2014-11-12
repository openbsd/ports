# $OpenBSD: Makefile,v 1.13 2014/11/12 10:53:53 benoit Exp $

COMMENT= 	simple interface to HTML::TokeParser

DISTNAME =	HTML-TokeParser-Simple-3.16
CATEGORIES=	www

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
USE_GROFF =	Yes

RUN_DEPENDS=	www/p5-HTML-Parser

TEST_DEPENDS=devel/p5-Sub-Override
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
