# $OpenBSD: Makefile,v 1.8 2018/12/11 12:33:26 sthen Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-3.1.3
REVISION=		1

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-redis

.include <bsd.port.mk>
