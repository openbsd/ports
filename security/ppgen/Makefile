# $OpenBSD: Makefile,v 1.13 2013/03/11 11:41:27 espie Exp $

COMMENT=	secure passphrase generator

DISTNAME=	ppgen-1.0
CATEGORIES=	security

# Public domain
PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		c m

DIST_SUBDIR=	${DISTNAME}
MASTER_SITES=	ftp://ftp.cerias.purdue.edu/pub/tools/unix/sysutils/ppgen/
DISTFILES=	${DISTNAME}.tar.gz en.gz
EXTRACT_ONLY=	${DISTNAME}.tar.gz

AUTOCONF_VERSION=2.13
CONFIGURE_STYLE=autoconf dest no-autoheader
USE_GROFF =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ppgen
	gzip -dc ${FULLDISTDIR}/en.gz > ${PREFIX}/share/ppgen/en

.include <bsd.port.mk>

