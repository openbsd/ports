COMMENT=	secure passphrase generator

DISTNAME=	ppgen-1.0
CATEGORIES=	security
REVISION=	0

# Public domain
PERMIT_PACKAGE=	Yes
WANTLIB=		c m

DIST_SUBDIR=	${DISTNAME}
SITES=		ftp://ftp.cerias.purdue.edu/pub/tools/unix/sysutils/ppgen/
DISTFILES=	${DISTNAME}.tar.gz en.gz
EXTRACT_ONLY=	${DISTNAME}.tar.gz

AUTOCONF_VERSION=2.13
CONFIGURE_STYLE=autoconf dest no-autoheader

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ppgen
	gzip -dc ${FULLDISTDIR}/en.gz > ${PREFIX}/share/ppgen/en

.include <bsd.port.mk>

