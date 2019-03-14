# $OpenBSD: Makefile,v 1.10 2019/03/14 15:57:51 sthen Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-4.3.0

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-redis

.include <bsd.port.mk>
