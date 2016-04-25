# $OpenBSD: Makefile,v 1.12 2016/04/25 15:06:21 sthen Exp $

COMMENT=	PHP classes for LDAP, based on Net::LDAP

DISTNAME=	Net_LDAP2-2.2.0
CATEGORIES=	net

MODULES=	lang/php www/pear

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-ldap

.include <bsd.port.mk>
