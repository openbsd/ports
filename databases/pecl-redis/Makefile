# $OpenBSD: Makefile,v 1.6 2017/07/23 09:01:42 ajacoutot Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-3.1.3

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-redis

.include <bsd.port.mk>
