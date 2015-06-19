# $OpenBSD: Makefile,v 1.6 2015/06/19 14:03:48 jasper Exp $

COMMENT=		Redis-backed library to create jobs and place them on queues

DISTNAME=		resque-1.23.1
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

MODRUBY_TEST=		rake
TEST_DEPENDS=		databases/redis
MODRUBY_TEST_ENV+=	PATH=${PATH}

pre-test:
	${INSTALL_DATA_DIR} ${WRKSRC}/log/

.include <bsd.port.mk>
