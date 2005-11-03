# $OpenBSD: Makefile,v 1.10 2005/11/03 18:28:56 naddy Exp $

COMMENT=	"secure passphrase generator"

DISTNAME=	ppgen-1.0
CATEGORIES=	security

# Public domain
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c m

DIST_SUBDIR=	${DISTNAME}
MASTER_SITES=	ftp://ftp.cerias.purdue.edu/pub/tools/unix/sysutils/ppgen/
DISTFILES=	${DISTNAME}.tar.gz en.gz
EXTRACT_ONLY=	${DISTNAME}.tar.gz

AUTOCONF_VERSION=2.13
CONFIGURE_STYLE=autoconf dest no-autoheader

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ppgen
	gzip -dc ${FULLDISTDIR}/en.gz > ${PREFIX}/share/ppgen/en

.include <bsd.port.mk>

