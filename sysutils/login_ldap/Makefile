# $OpenBSD: Makefile,v 1.23 2015/10/27 13:31:16 sthen Exp $

COMMENT=	provide ldap authentication type

DISTNAME=	login_ldap-3.51
REVISION=	8
CATEGORIES=	sysutils

HOMEPAGE=	http://sourceforge.net/projects/login-ldap/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=login-ldap/}

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c lber ldap

LIB_DEPENDS=	databases/openldap
NO_TEST=	Yes

pre-configure:
	@perl -pi -e "s@/usr/local@${PREFIX}@" ${WRKSRC}/login_ldap.8

.include <bsd.port.mk>
