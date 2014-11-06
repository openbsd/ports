# $OpenBSD: Makefile,v 1.9 2014/11/06 17:13:39 sthen Exp $

COMMENT=	PHP classes for LDAP, based on Net::LDAP

DISTNAME=	Net_LDAP2-2.0.12
CATEGORIES=	net
REVISION=	1

MODULES=	lang/php www/pear

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-ldap

.include <bsd.port.mk>
