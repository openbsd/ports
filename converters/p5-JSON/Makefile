# $OpenBSD: Makefile,v 1.22 2021/01/24 14:29:09 sthen Exp $

COMMENT= 	parse and convert to JSON (JavaScript Object Notation)

DISTNAME=	JSON-4.03
CATEGORIES=	converters

# Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan

RUN_DEPENDS=	www/p5-libwww
TEST_DEPENDS=	converters/p5-JSON-XS

MAKE_ENV=	TEST_POD=Yes

PKG_ARCH=	*

.include <bsd.port.mk>
