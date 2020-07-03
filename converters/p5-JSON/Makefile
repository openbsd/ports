# $OpenBSD: Makefile,v 1.21 2020/07/03 21:44:32 sthen Exp $

COMMENT= 	parse and convert to JSON (JavaScript Object Notation)

DISTNAME=	JSON-4.02
CATEGORIES=	converters
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan

RUN_DEPENDS=	www/p5-libwww
TEST_DEPENDS=	converters/p5-JSON-XS

MAKE_ENV=	TEST_POD=Yes

PKG_ARCH=	*

.include <bsd.port.mk>
