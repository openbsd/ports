# $OpenBSD: Makefile,v 1.22 2019/07/12 20:48:43 sthen Exp $

COMMENT=	pear ldap

DISTNAME=	Net_LDAP-1.1.5
REVISION=	8
CATEGORIES=	net

MODULES=	lang/php www/pear

# BSD License
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-ldap

.include <bsd.port.mk>
