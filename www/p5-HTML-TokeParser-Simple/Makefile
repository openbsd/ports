# $OpenBSD: Makefile,v 1.16 2019/07/12 20:50:54 sthen Exp $

COMMENT= 	simple interface to HTML::TokeParser

DISTNAME =	HTML-TokeParser-Simple-3.16
CATEGORIES=	www

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	www/p5-HTML-Parser

TEST_DEPENDS=devel/p5-Sub-Override
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
