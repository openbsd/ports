# $OpenBSD: Makefile,v 1.10 2019/07/12 20:51:04 sthen Exp $

COMMENT=		small, simple testing API for Rack apps

DISTNAME=		rack-test-0.6.3
CATEGORIES=		www

HOMEPAGE=		https://github.com/brynary/rack-test

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		www/ruby-rack,${MODRUBY_FLAVOR}>=1.0

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
