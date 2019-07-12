# $OpenBSD: Makefile,v 1.12 2019/07/12 20:43:58 sthen Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-5.0.0

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-redis

.include <bsd.port.mk>
