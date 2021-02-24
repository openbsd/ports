# $OpenBSD: Makefile,v 1.22 2021/02/24 16:49:00 sthen Exp $

COMMENT=	web-based config deployment tool for Icinga 2

MODULE_NAME=	director
MODULE_VERSION=	v1.8.0
REVISION=	1

RUN_DEPENDS=	net/icinga/web2-module-incubator \
		net/icinga/web2-module-ipl \
		net/icinga/web2-module-reactbundle \
		lang/php/${MODPHP_VERSION},-curl

.include <bsd.port.mk>
