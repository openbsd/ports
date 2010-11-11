# $OpenBSD: Makefile,v 1.13 2010/11/11 19:00:49 espie Exp $

COMMENT=	provide ldap authentication type

DISTNAME=	login_ldap-3.51
REVISION =	0
CATEGORIES=    	sysutils	

HOMEPAGE=	http://sourceforge.net/projects/login-ldap/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=login-ldap/}

MAINTAINER=	Michael Erdely <merdely@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		c lber ldap

LIB_DEPENDS=	:openldap-client-*:databases/openldap
NO_REGRESS=	Yes

pre-configure:
	@perl -pi -e "s@/usr/local@${PREFIX}@" ${WRKSRC}/login_ldap.8

.include <bsd.port.mk>
