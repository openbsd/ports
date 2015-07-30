# $OpenBSD: Makefile,v 1.18 2015/07/30 16:05:51 sthen Exp $

COMMENT=		Apache LDAP based virtual hosts module

REVISION=		11
DISTNAME=		mod_ldapvhost-1.0.2
CATEGORIES=		www

MASTER_SITES=		http://spacehopper.org/mirrors/
EXTRACT_SUFX=		.tgz

MODULES+=		apache-module

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += lber ldap

MODAPACHE_NAME=		ldapvhost

NO_TEST=		Yes

LIB_DEPENDS=		databases/openldap

do-build:
	(cd ${WRKBUILD}; make)

post-build:
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_ldapvhost
	${INSTALL_DATA} ${WRKBUILD}/*.schema ${PREFIX}/share/doc/mod_ldapvhost/
	${INSTALL_DATA} ${WRKBUILD}/mod_ldapvhost.conf \
	    ${PREFIX}/share/doc/mod_ldapvhost/
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
