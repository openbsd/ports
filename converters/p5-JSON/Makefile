# $OpenBSD: Makefile,v 1.19 2019/07/17 14:49:20 danj Exp $

COMMENT= 	parse and convert to JSON (JavaScript Object Notation)

DISTNAME=	JSON-2.94
CATEGORIES=	converters
MODULES=	cpan
PKG_ARCH=	*
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-libwww
TEST_DEPENDS=	converters/p5-JSON-XS

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
