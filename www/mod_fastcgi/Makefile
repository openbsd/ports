# $OpenBSD: Makefile,v 1.1.1.1 2005/02/14 06:23:23 mbalmer Exp $

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
SHARED_ONLY=	Yes

COMMENT=        "Apache FastCGI module"

DISTNAME=       mod_fastcgi-2.4.2
CATEGORIES=     www

HOMEPAGE=       http://www.fastcgi.com/

MASTER_SITES=   ${HOMEPAGE}dist/

MAINTAINER=     Marc Balmer <mbalmer@openbsd.org>

# Proprietary license
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

NO_REGRESS=     Yes

do-build:
	(cd ${WRKBUILD}; apxs -o mod_fastcgi.so -c *.c)
	
post-build:
	sed 's,!!PREFIX!!,${PREFIX},' \
		< ${FILESDIR}/mod_fastcgi-enable \
		> ${WRKBUILD}/mod_fastcgi-enable

do-install:
	${INSTALL_DATA} ${WRKBUILD}/mod_fastcgi.so ${PREFIX}/lib
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_fastcgi-enable ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_fastcgi
	${INSTALL_DATA} ${WRKBUILD}/docs/* ${PREFIX}/share/doc/mod_fastcgi
	
.include <bsd.port.mk>
