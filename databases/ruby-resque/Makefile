# $OpenBSD: Makefile,v 1.9 2019/07/12 21:02:13 sthen Exp $

COMMENT=		Redis-backed library to create jobs and place them on queues

DISTNAME=		resque-1.23.1
REVISION=		1
CATEGORIES=		databases www

HOMEPAGE=		https://github.com/resque/resque

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		converters/ruby-multi_json,${MODRUBY_FLAVOR} \
			databases/ruby-redis,${MODRUBY_FLAVOR}>=3.0.4v1,<4.0.0v1 \
			databases/ruby-redis-namespace,${MODRUBY_FLAVOR} \
			www/ruby-sinatra,${MODRUBY_FLAVOR} \
			www/ruby-vegas,${MODRUBY_FLAVOR}

MODRUBY_TEST=		rake
TEST_DEPENDS=		databases/redis \
			devel/ruby-bundler,${MODRUBY_FLAVOR} \
			devel/ruby-mocha,${MODRUBY_FLAVOR} \
			www/ruby-rack-test,${MODRUBY_FLAVOR}

MODRUBY_TEST_ENV+=	PATH=${PATH}

pre-test:
	${INSTALL_DATA_DIR} ${WRKSRC}/log/

.include <bsd.port.mk>
