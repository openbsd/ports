# $OpenBSD: Makefile,v 1.27 2021/12/20 09:03:39 sthen Exp $

COMMENT=	PHP interface to redis

DISTNAME=	redis-5.3.5

CATEGORIES=	databases

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=	c

MODULES=	lang/php/pecl

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-redis

.include <bsd.port.mk>
