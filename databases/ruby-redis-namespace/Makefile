# $OpenBSD: Makefile,v 1.9 2019/07/12 21:02:13 sthen Exp $

COMMENT=		Redis::Namespace class for namespacing calls to Redis

DISTNAME=		redis-namespace-1.5.3
REVISION=		0
CATEGORIES=		databases

HOMEPAGE=		https://github.com/resque/redis-namespace

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		databases/ruby-redis,${MODRUBY_FLAVOR}>=3.0.4v1,<4.0.0v1

.include <bsd.port.mk>
