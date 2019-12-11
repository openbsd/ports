# $OpenBSD: Makefile,v 1.14 2019/12/11 16:08:29 sthen Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-5.0.2
REVISION=		0

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-redis

.include <bsd.port.mk>
