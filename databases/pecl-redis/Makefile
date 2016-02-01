# $OpenBSD: Makefile,v 1.2 2016/02/01 21:55:38 sthen Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-2.2.7
REVISION=		0

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-redis

.include <bsd.port.mk>
