# $OpenBSD: Makefile,v 1.14 2015/01/21 14:43:33 sthen Exp $

COMMENT= 	simple interface to HTML::TokeParser

DISTNAME =	HTML-TokeParser-Simple-3.16
CATEGORIES=	www

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

RUN_DEPENDS=	www/p5-HTML-Parser

TEST_DEPENDS=devel/p5-Sub-Override
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
