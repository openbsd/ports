# $OpenBSD: Makefile,v 1.28 2022/01/18 08:48:25 sthen Exp $

COMMENT=	PHP interface to redis

DISTNAME=	redis-5.3.6

CATEGORIES=	databases

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=	c

MODULES=	lang/php/pecl

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-redis

.include <bsd.port.mk>
