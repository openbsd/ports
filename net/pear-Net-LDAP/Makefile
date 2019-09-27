# $OpenBSD: Makefile,v 1.23 2019/09/27 10:55:51 sthen Exp $

COMMENT=	pear ldap

DISTNAME=	Net_LDAP-1.1.5
REVISION=	9
CATEGORIES=	net

MODULES=	lang/php www/pear

# BSD License
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-ldap

.include <bsd.port.mk>
