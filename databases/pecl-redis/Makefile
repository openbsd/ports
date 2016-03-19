# $OpenBSD: Makefile,v 1.4 2016/03/19 21:18:38 naddy Exp $

COMMENT=		PHP interface to redis

DISTNAME=		redis-2.2.7
REVISION=		0

CATEGORIES=		databases

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MODULES=		lang/php/pecl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-redis

.include <bsd.port.mk>
