# $OpenBSD: Makefile,v 1.1.1.1 2001/07/15 22:52:45 avsm Exp $

COMMENT=	"transparently compress Apache output"

VERSION=	1.3.19.1a
DISTNAME=	mod_gzip.c
PKGNAME=	mod_gzip-${VERSION}
CATEGORIES=	www
NEED_VERSION=	1.364
MASTER_SITES=	http://www.remotecommunications.com/apache/mod_gzip/src/${VERSION}/

HOMEPAGE=	http://www.remotecommunications.com/apache/mod_gzip/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# This port current only works with archs supporting dynamic loading.
ONLY_FOR_ARCHS= i386 m68k sparc

EXTRACT_SUFX=   .gz
WRKDIST=	${WRKDIR}

post-extract:
	@mkdir -p ${WRKSRC}
	@cp ${FILESDIR}/Makefile.OpenBSD ${WRKSRC}/Makefile

post-build:
	@sed 's,y0y0y0,${TRUEPREFIX},' \
		< ${FILESDIR}/gzip-enable > ${WRKSRC}/gzip-enable

do-install:
	${INSTALL_DATA} ${WRKSRC}/mod_gzip.so ${PREFIX}/lib
	${INSTALL_SCRIPT} ${WRKSRC}/gzip-enable ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mod_gzip
	${INSTALL_DATA} ${FILESDIR}/mod_gzip.conf.sample ${PREFIX}/share/examples/mod_gzip

.include <bsd.port.mk>
