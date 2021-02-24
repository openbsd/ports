# $OpenBSD: Makefile,v 1.17 2021/02/24 16:49:01 sthen Exp $

COMMENT=	PHP classes for LDAP, based on Net::LDAP

DISTNAME=	Net_LDAP2-2.2.0
REVISION=	3
CATEGORIES=	net

MODULES=	lang/php www/pear

# LGPLv3
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-ldap

.include <bsd.port.mk>
