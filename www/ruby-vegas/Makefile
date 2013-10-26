# $OpenBSD: Makefile,v 1.4 2013/10/26 23:55:38 jeremy Exp $

COMMENT=		create executable versions of Sinatra/Rack apps

DISTNAME=		vegas-0.1.11
REVISION=		1
CATEGORIES=		www

HOMEPAGE=		http://code.quirkey.com/vegas/

# MIT
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		www/ruby-rack,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
