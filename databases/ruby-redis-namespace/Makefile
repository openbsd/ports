# $OpenBSD: Makefile,v 1.7 2017/08/28 05:16:33 dcoppa Exp $

COMMENT=		Redis::Namespace class for namespacing calls to Redis

DISTNAME=		redis-namespace-1.5.3
CATEGORIES=		databases

HOMEPAGE=		https://github.com/resque/redis-namespace

# MIT
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

# XXX until gemspec is fixed
GEM_FLAGS=		--ignore-dependencies

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		databases/ruby-redis,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
