# $OpenBSD: Makefile,v 1.20 2020/09/23 15:21:28 sthen Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-5.3.1

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-redis

.include <bsd.port.mk>
