# $OpenBSD: Makefile,v 1.19 2020/07/01 20:18:05 sthen Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-5.3.0

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-redis

.include <bsd.port.mk>
