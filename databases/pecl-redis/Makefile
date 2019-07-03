# $OpenBSD: Makefile,v 1.11 2019/07/03 14:38:55 sthen Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-5.0.0

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-redis

.include <bsd.port.mk>
