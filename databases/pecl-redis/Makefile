# $OpenBSD: Makefile,v 1.23 2021/02/24 21:23:16 sthen Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-5.3.3
REVISION=		0

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-redis

.include <bsd.port.mk>
