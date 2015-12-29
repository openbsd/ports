# $OpenBSD: Makefile,v 1.16 2015/12/29 20:21:50 jasper Exp $

COMMENT=		library for making beautiful graphs

DISTNAME=		gruff-0.6.0
CATEGORIES=		graphics

HOMEPAGE=		https://github.com/topfunky/gruff

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		graphics/ruby-rmagick,${MODRUBY_FLAVOR}

MODRUBY_TEST=		testrb
MODRUBY_TEST_TARGET=	-I lib test/test_*.rb

.include <bsd.port.mk>
