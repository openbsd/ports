# $OpenBSD: Makefile,v 1.7 2009/06/03 00:48:51 pyr Exp $

COMMENT=		Apache LDAP based virtual hosts module

DISTNAME=		mod_ldapvhost-1.0.2
PKGNAME=		${DISTNAME}p4
CATEGORIES=		www

HOMEPAGE=		https://www.msys.ch/products/unix/mod_ldapvhost/

MAINTAINER=		Marc Balmer <mbalmer@openbsd.org>

MASTER_SITES=		ftp://ftp.etc.msys.ch/pub/sources/mod_ldapvhost/
EXTRACT_SUFX=		.tgz
MODULES+=		apache-module

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODAPACHE_NAME=		ldapvhost

NO_REGRESS=		Yes

LIB_DEPENDS=		ldap,lber::databases/openldap

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
