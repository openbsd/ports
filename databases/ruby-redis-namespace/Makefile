# $OpenBSD: Makefile,v 1.5 2014/09/29 19:29:56 jasper Exp $

COMMENT=		Redis::Namespace class for namespacing calls to Redis

DISTNAME=		redis-namespace-1.5.1
CATEGORIES=		databases

HOMEPAGE=		https://github.com/resque/redis-namespace

# MIT
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		databases/ruby-redis,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
