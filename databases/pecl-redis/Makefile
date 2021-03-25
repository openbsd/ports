# $OpenBSD: Makefile,v 1.24 2021/03/25 14:57:10 sthen Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-5.3.4

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-redis

.include <bsd.port.mk>
