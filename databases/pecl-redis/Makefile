# $OpenBSD: Makefile,v 1.15 2019/12/28 17:32:29 sthen Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-5.1.1

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-redis

.include <bsd.port.mk>
