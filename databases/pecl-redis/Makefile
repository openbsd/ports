# $OpenBSD: Makefile,v 1.16 2020/03/03 14:27:45 sthen Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-5.2.0

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-redis

.include <bsd.port.mk>
