# $OpenBSD: Makefile,v 1.26 2021/10/25 12:33:19 sthen Exp $

COMMENT=	PHP interface to redis

DISTNAME=	redis-5.3.4
REVISION=	1

CATEGORIES=	databases

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=	c

MODULES=	lang/php/pecl

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-redis

.include <bsd.port.mk>
