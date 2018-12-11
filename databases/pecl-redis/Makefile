# $OpenBSD: Makefile,v 1.9 2018/12/11 12:48:06 sthen Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-4.2.0

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-redis

.include <bsd.port.mk>
