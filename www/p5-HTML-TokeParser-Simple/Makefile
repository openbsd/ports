# $OpenBSD: Makefile,v 1.17 2020/07/03 21:46:02 sthen Exp $

COMMENT= 	simple interface to HTML::TokeParser

DISTNAME =	HTML-TokeParser-Simple-3.16
CATEGORIES=	www
REVISION =	0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	www/p5-HTML-Parser

TEST_DEPENDS=devel/p5-Sub-Override
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
