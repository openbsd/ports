# $OpenBSD: Makefile,v 1.20 2021/09/01 20:08:03 jeremy Exp $

COMMENT=		library for making beautiful graphs

DISTNAME=		gruff-0.9.0
CATEGORIES=		graphics

HOMEPAGE=		https://github.com/topfunky/gruff

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		graphics/ruby-rmagick,${MODRUBY_FLAVOR}

MODRUBY_TEST=		rake

.include <bsd.port.mk>
