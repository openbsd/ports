# $OpenBSD: Makefile,v 1.24 2019/07/12 20:49:45 sthen Exp $

COMMENT=	provide ldap authentication type

DISTNAME=	login_ldap-3.51
REVISION=	8
CATEGORIES=	sysutils

HOMEPAGE=	http://sourceforge.net/projects/login-ldap/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=login-ldap/}

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c lber ldap

LIB_DEPENDS=	databases/openldap
NO_TEST=	Yes

pre-configure:
	@perl -pi -e "s@/usr/local@${PREFIX}@" ${WRKSRC}/login_ldap.8

.include <bsd.port.mk>
