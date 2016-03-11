# $OpenBSD: Makefile,v 1.3 2016/03/11 20:28:23 naddy Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-2.2.7
REVISION=		0

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-redis

.include <bsd.port.mk>
