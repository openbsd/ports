# $OpenBSD: Makefile,v 1.15 2014/09/19 20:36:01 jeremy Exp $

COMMENT=		library for making beautiful graphs

DISTNAME=		gruff-0.3.7
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
