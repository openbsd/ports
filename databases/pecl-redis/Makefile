# $OpenBSD: Makefile,v 1.13 2019/08/31 15:19:43 sthen Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-5.0.2

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-redis

.include <bsd.port.mk>
