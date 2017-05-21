# $OpenBSD: Makefile,v 1.5 2017/05/21 21:46:32 sthen Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-3.1.2

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-redis

.include <bsd.port.mk>
