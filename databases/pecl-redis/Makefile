# $OpenBSD: Makefile,v 1.18 2020/05/14 11:44:19 sthen Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-5.2.2

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-redis

.include <bsd.port.mk>
