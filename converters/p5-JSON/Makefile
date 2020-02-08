# $OpenBSD: Makefile,v 1.20 2020/02/08 21:49:55 cwen Exp $

COMMENT= 	parse and convert to JSON (JavaScript Object Notation)

DISTNAME=	JSON-4.02
CATEGORIES=	converters

# Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan

RUN_DEPENDS=	www/p5-libwww
TEST_DEPENDS=	converters/p5-JSON-XS

MAKE_ENV=	TEST_POD=Yes

PKG_ARCH=	*

.include <bsd.port.mk>
