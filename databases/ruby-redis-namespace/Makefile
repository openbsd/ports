# $OpenBSD: Makefile,v 1.4 2014/07/11 21:56:54 dcoppa Exp $

COMMENT=		Redis::Namespace class for namespacing calls to Redis

DISTNAME=		redis-namespace-1.5.0
CATEGORIES=		databases

HOMEPAGE=		https://github.com/defunkt/redis-namespace

# MIT
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		databases/ruby-redis,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
