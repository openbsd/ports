# $OpenBSD: Makefile,v 1.1.1.1 2003/05/04 23:09:01 henning Exp $

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
ONLY_FOR_ARCHS=	alpha i386 m68k powerpc sparc sparc64

COMMENT=	"Apache LDAP authentication module"

VERSION=	1.6.0
DISTNAME=	auth_ldap-${VERSION}
PKGNAME=	mod_auth_ldap-${VERSION}
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
BUILD_DEPENDS=	${LIB_DEPENDS}

NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu

post-build:
	sed 's,!!PREFIX!!,${PREFIX},' \
		< ${FILESDIR}/mod_auth_ldap-enable \
		> ${WRKBUILD}/mod_auth_ldap-enable

do-install:
	${INSTALL_DATA} ${WRKBUILD}/auth_ldap.so ${PREFIX}/lib
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_auth_ldap-enable ${PREFIX}/sbin

.include <bsd.port.mk>
