# $OpenBSD: Makefile,v 1.1.1.1 2012/10/31 22:12:20 jasper Exp $

COMMENT=		Redis-backed library to create jobs and place them on queues

DISTNAME=		resque-1.23.0
CATEGORIES=		databases www

HOMEPAGE=		https://github.com/defunkt/resque

# MIT
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		converters/ruby-multi_json,${MODRUBY_FLAVOR} \
			databases/ruby-redis-namespace,${MODRUBY_FLAVOR} \
			www/ruby-sinatra,${MODRUBY_FLAVOR} \
			www/ruby-vegas,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
