# $OpenBSD: Makefile,v 1.7 2018/04/26 15:08:56 sthen Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-3.1.3
REVISION=		0

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-redis

.include <bsd.port.mk>
