# $OpenBSD: Makefile,v 1.19 2019/07/12 20:47:09 sthen Exp $

COMMENT=		library for making beautiful graphs

DISTNAME=		gruff-0.7.0
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
