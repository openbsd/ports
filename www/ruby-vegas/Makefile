# $OpenBSD: Makefile,v 1.2 2012/11/01 09:59:52 jasper Exp $

COMMENT=		create executable versions of Sinatra/Rack apps

DISTNAME=		vegas-0.1.11
REVISION=		0
CATEGORIES=		www

HOMEPAGE=		http://code.quirkey.com/vegas/

# MIT
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		www/ruby-rack,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
