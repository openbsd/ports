# $OpenBSD: Makefile,v 1.7 2003/05/05 00:44:59 henning Exp $

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
ONLY_FOR_ARCHS=	alpha i386 m68k powerpc sparc sparc64

VERSION=	1.6.0
DISTNAME=	auth_ldap-${VERSION}
PKGNAME=	mod_auth_ldap-${VERSION}
CATEGORIES=	www

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"Apache LDAP authentication module"
HOMEPAGE=	http://www.rudedog.org/auth_ldap/
MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=ldap,lber::databases/openldap

MAINTAINER=	Henning Brauer <henning@openbsd.org>

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
