# $OpenBSD: Makefile,v 1.1.1.1 2006/10/22 08:55:38 mbalmer Exp $

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
SHARED_ONLY=		Yes

COMMENT=		"Apache LDAP based virtual hosts module"

DISTNAME=		mod_ldapvhost-1.0.2
CATEGORIES=		www

HOMEPAGE=		https://www.msys.ch/products/unix/mod_ldapvhost/

MAINTAINER=		Marc Balmer <mbalmer@openbsd.org>

MASTER_SITES=		ftp://ftp.etc.msys.ch/pub/sources/mod_ldapvhost/
EXTRACT_SUFX=		.tgz

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

NO_REGRESS=		Yes

RUN_DEPENDS=		ldap,lber::databases/openldap

do-build:
	(cd ${WRKBUILD}; make)
	
post-build:
	sed 's,!!PREFIX!!,${PREFIX},' \
		< ${FILESDIR}/mod_ldapvhost-enable \
		> ${WRKBUILD}/mod_ldapvhost-enable

do-install:
	${INSTALL_DATA} ${WRKBUILD}/mod_ldapvhost.so ${PREFIX}/lib
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_ldapvhost-enable ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_ldapvhost
	${INSTALL_DATA} ${WRKBUILD}/*.schema ${PREFIX}/share/doc/mod_ldapvhost
	
.include <bsd.port.mk>
