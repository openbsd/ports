# $OpenBSD: Makefile,v 1.12 2009/06/03 00:48:51 pyr Exp $

COMMENT=	Apache LDAP authentication module

VERSION=	1.6.0
DISTNAME=	auth_ldap-${VERSION}
PKGNAME=	mod_auth_ldap-${VERSION}p7
CATEGORIES=	www

HOMEPAGE=	http://www.rudedog.org/auth_ldap/

MASTER_SITES=	${HOMEPAGE}

MODULES+=	apache-module

# Apache License, one unused function GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODAPACHE_NAME=		auth_ldap
MODAPACHE_FILE=		${MODAPACHE_LOCATION}/auth_ldap.so

LIB_DEPENDS=	ldap,lber::databases/openldap

NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu

post-build:
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_auth_ldap
	${INSTALL_DATA} ${WRKBUILD}/auth_ldap.html \
		${PREFIX}/share/doc/mod_auth_ldap
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
