# $OpenBSD: Makefile,v 1.7 2013/03/11 11:44:49 espie Exp $

COMMENT=		small, simple testing API for Rack apps

DISTNAME=		rack-test-0.6.1
REVISION =		0
CATEGORIES=		www

HOMEPAGE=		https://github.com/brynary/rack-test

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		www/ruby-rack,${MODRUBY_FLAVOR}>=1.0

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
