# $OpenBSD: Makefile,v 1.2 2013/03/11 02:52:08 espie Exp $

COMMENT=		Redis::Namespace class for namespacing calls to Redis

DISTNAME=		redis-namespace-1.2.1
CATEGORIES=		databases

HOMEPAGE=		https://github.com/defunkt/redis-namespace

# MIT
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		databases/ruby-redis,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
