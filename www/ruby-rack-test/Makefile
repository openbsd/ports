# $OpenBSD: Makefile,v 1.8 2013/10/26 23:55:38 jeremy Exp $

COMMENT=		small, simple testing API for Rack apps

DISTNAME=		rack-test-0.6.1
REVISION =		1
CATEGORIES=		www

HOMEPAGE=		https://github.com/brynary/rack-test

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		www/ruby-rack,${MODRUBY_FLAVOR}>=1.0

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
