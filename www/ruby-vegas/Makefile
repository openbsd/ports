# $OpenBSD: Makefile,v 1.3 2013/03/11 11:44:49 espie Exp $

COMMENT=		create executable versions of Sinatra/Rack apps

DISTNAME=		vegas-0.1.11
REVISION=		0
CATEGORIES=		www

HOMEPAGE=		http://code.quirkey.com/vegas/

# MIT
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		www/ruby-rack,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
