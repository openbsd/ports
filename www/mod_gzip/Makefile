# $OpenBSD: Makefile,v 1.3 2002/03/17 05:04:36 brad Exp $

COMMENT=	"transparently compress Apache output"

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
ONLY_FOR_ARCHS=	alpha i386 m68k powerpc sparc sparc64

VERSION=	1.3.19.1a
DISTNAME=	mod_gzip.c
PKGNAME=	mod_gzip-${VERSION}
CATEGORIES=	www
NEED_VERSION=	1.435
MASTER_SITES=	http://www.remotecommunications.com/apache/mod_gzip/src/${VERSION}/
EXTRACT_SUFX=   .gz

HOMEPAGE=	http://www.remotecommunications.com/apache/mod_gzip/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	PKGNAME

WRKDIST=	${WRKDIR}

post-extract:
	@cp -f ${FILESDIR}/Makefile.OpenBSD ${WRKSRC}/Makefile

post-build:
	@sed 's,!!PREFIX!!,${PREFIX},' \
		< ${FILESDIR}/mod_gzip-enable > ${WRKBUILD}/mod_gzip-enable

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mod_gzip
	${INSTALL_DATA} ${WRKBUILD}/mod_gzip.so ${PREFIX}/lib
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_gzip-enable ${PREFIX}/sbin
	${INSTALL_DATA} ${FILESDIR}/mod_gzip.conf.sample ${PREFIX}/share/examples/mod_gzip

.include <bsd.port.mk>
