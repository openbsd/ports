# $OpenBSD: Makefile,v 1.16 2019/09/27 10:55:51 sthen Exp $

COMMENT=	PHP classes for LDAP, based on Net::LDAP

DISTNAME=	Net_LDAP2-2.2.0
REVISION=	2
CATEGORIES=	net

MODULES=	lang/php www/pear

# LGPLv3
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-ldap

.include <bsd.port.mk>
