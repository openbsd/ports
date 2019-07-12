# $OpenBSD: Makefile,v 1.5 2019/07/12 21:02:29 sthen Exp $

COMMENT=		create executable versions of Sinatra/Rack apps

DISTNAME=		vegas-0.1.11
REVISION=		1
CATEGORIES=		www

HOMEPAGE=		http://code.quirkey.com/vegas/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		www/ruby-rack,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
