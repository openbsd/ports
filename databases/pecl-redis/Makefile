# $OpenBSD: Makefile,v 1.21 2020/11/21 16:29:37 sthen Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-5.3.2

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-redis

.include <bsd.port.mk>
