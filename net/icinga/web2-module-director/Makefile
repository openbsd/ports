# $OpenBSD: Makefile,v 1.21 2021/02/10 15:35:38 sthen Exp $

COMMENT=	web-based config deployment tool for Icinga 2

MODULE_NAME=	director
MODULE_VERSION=	v1.8.0
REVISION=	0

RUN_DEPENDS=	net/icinga/web2-module-incubator \
		net/icinga/web2-module-ipl \
		net/icinga/web2-module-reactbundle \
		lang/php/${MODPHP_VERSION},-curl

.include <bsd.port.mk>
