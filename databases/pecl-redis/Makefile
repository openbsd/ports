# $OpenBSD: Makefile,v 1.25 2021/04/30 16:52:59 sthen Exp $

COMMENT=	PHP interface to redis

DISTNAME=	redis-5.3.4
REVISION=	0

CATEGORIES=	databases

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=	c

MODULES=	lang/php/pecl

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-redis

.include <bsd.port.mk>
