# $OpenBSD: Makefile,v 1.6 2002/05/11 23:01:14 matt Exp $

COMMENT=	"secure passphrase generator"

DISTNAME=	ppgen-1.0
CATEGORIES=	security
NEED_VERSION=	1.361

MAINTAINER=	Matt Behrens <matt@openbsd.org>

# Public domain
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

DIST_SUBDIR=	${DISTNAME}
MASTER_SITES=	ftp://ftp.cerias.purdue.edu/pub/tools/unix/sysutils/ppgen/
DISTFILES=	${DISTNAME}.tar.gz en.gz
EXTRACT_ONLY=	${DISTNAME}.tar.gz

CONFIGURE_STYLE=autoconf dest

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ppgen
	gzip -dc ${FULLDISTDIR}/en.gz > ${PREFIX}/share/ppgen/en

.include <bsd.port.mk>

