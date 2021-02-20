# $OpenBSD: Makefile,v 1.22 2021/02/20 02:03:50 sthen Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-5.3.3

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-redis

.include <bsd.port.mk>
