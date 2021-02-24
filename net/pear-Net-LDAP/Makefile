# $OpenBSD: Makefile,v 1.24 2021/02/24 16:49:01 sthen Exp $

COMMENT=	pear ldap

DISTNAME=	Net_LDAP-1.1.5
REVISION=	10
CATEGORIES=	net

MODULES=	lang/php www/pear

# BSD License
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-ldap

.include <bsd.port.mk>
