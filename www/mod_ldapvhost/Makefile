# $OpenBSD: Makefile,v 1.17 2014/03/13 17:33:27 sthen Exp $

COMMENT=		Apache LDAP based virtual hosts module

REVISION=		10
DISTNAME=		mod_ldapvhost-1.0.2
CATEGORIES=		www

HOMEPAGE=		https://www.msys.ch/products/unix/mod_ldapvhost/

MASTER_SITES=		http://www.etc.msys.ch/software/mod_ldapvhost/
EXTRACT_SUFX=		.tgz
MODULES+=		apache-module

# BSD
PERMIT_PACKAGE_CDROM=   Yes

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
