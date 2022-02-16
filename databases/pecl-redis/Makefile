# $OpenBSD: Makefile,v 1.29 2022/02/16 11:40:34 sthen Exp $

COMMENT=	PHP interface to redis

DISTNAME=	redis-5.3.7

CATEGORIES=	databases

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=	c

MODULES=	lang/php/pecl

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-redis

.include <bsd.port.mk>
