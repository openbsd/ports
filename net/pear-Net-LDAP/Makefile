# $OpenBSD: Makefile,v 1.21 2018/10/17 14:15:55 sthen Exp $

COMMENT=	pear ldap

DISTNAME=	Net_LDAP-1.1.5
REVISION=	8
CATEGORIES=	net

MODULES=	lang/php www/pear

# BSD License
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-ldap

.include <bsd.port.mk>
