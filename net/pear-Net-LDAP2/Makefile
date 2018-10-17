# $OpenBSD: Makefile,v 1.14 2018/10/17 14:15:55 sthen Exp $

COMMENT=	PHP classes for LDAP, based on Net::LDAP

DISTNAME=	Net_LDAP2-2.2.0
REVISION=	1
CATEGORIES=	net

MODULES=	lang/php www/pear

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-ldap

.include <bsd.port.mk>
