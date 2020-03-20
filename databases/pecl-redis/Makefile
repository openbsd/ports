# $OpenBSD: Makefile,v 1.17 2020/03/20 15:55:56 sthen Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-5.2.1

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-redis

.include <bsd.port.mk>
