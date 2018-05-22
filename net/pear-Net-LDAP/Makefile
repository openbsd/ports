# $OpenBSD: Makefile,v 1.20 2018/05/22 08:18:08 sthen Exp $

COMMENT=	pear ldap

DISTNAME=	Net_LDAP-1.1.5
REVISION=	7
CATEGORIES=	net

MODULES=	lang/php www/pear

# BSD License
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-ldap

.include <bsd.port.mk>
