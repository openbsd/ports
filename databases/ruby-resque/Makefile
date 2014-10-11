# $OpenBSD: Makefile,v 1.5 2014/10/11 19:54:46 jeremy Exp $

COMMENT=		Redis-backed library to create jobs and place them on queues

DISTNAME=		resque-1.23.0
REVISION =		2
CATEGORIES=		databases www

HOMEPAGE=		https://github.com/resque/resque

# MIT
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		converters/ruby-multi_json,${MODRUBY_FLAVOR} \
			databases/ruby-redis-namespace,${MODRUBY_FLAVOR} \
			www/ruby-sinatra,${MODRUBY_FLAVOR} \
			www/ruby-vegas,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
