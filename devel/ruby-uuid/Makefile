# $OpenBSD: Makefile,v 1.7 2021/01/19 19:30:46 jeremy Exp $

COMMENT=		UUID generator

DISTNAME=		uuid-2.3.9
CATEGORIES=		devel

HOMEPAGE=		https://github.com/assaf/uuid

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		net/ruby-macaddr,${MODRUBY_FLAVOR}
TEST_DEPENDS=		devel/ruby-mocha,${MODRUBY_FLAVOR}

MODRUBY_TEST=		rake

.include <bsd.port.mk>
