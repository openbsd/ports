# $OpenBSD: Makefile,v 1.7 2007/02/11 10:31:20 bernd Exp $

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Apache LDAP authentication module"

VERSION=	1.6.0
DISTNAME=	auth_ldap-${VERSION}
PKGNAME=	mod_auth_ldap-${VERSION}p3
CATEGORIES=	www

HOMEPAGE=	http://www.rudedog.org/auth_ldap/

MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Henning Brauer <henning@openbsd.org>

# Apache License, one unused function GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	ldap,lber::databases/openldap

NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu

post-build:
	sed 's,!!PREFIX!!,${PREFIX},' \
		< ${FILESDIR}/mod_auth_ldap-enable \
		> ${WRKBUILD}/mod_auth_ldap-enable

do-install:
	${INSTALL_DATA} ${WRKBUILD}/auth_ldap.so ${PREFIX}/lib
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_auth_ldap-enable ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_auth_ldap
	${INSTALL_DATA} ${WRKBUILD}/auth_ldap.html \
		${PREFIX}/share/doc/mod_auth_ldap

.include <bsd.port.mk>
