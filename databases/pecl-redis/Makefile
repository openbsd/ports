# $OpenBSD: Makefile,v 1.1.1.1 2015/11/26 07:37:44 ajacoutot Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-2.2.7

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-redis

.include <bsd.port.mk>
