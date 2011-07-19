# $OpenBSD: Makefile,v 1.1.1.1 2011/07/19 09:16:06 jasper Exp $

PKG_ARCH=	*

COMMENT=	dip pen style TTF fonts

DISTNAME=	ecoliercourt-fonts-0.1
DISTFILES=	ecl_cour.ttf ec_cour.ttf

REVISION=	1

CATEGORIES=	fonts x11 education

# Open Font License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.bsdfrog.org/

DIST_SUBDIR=	ecoliercourt
EXTRACT_ONLY=

NO_BUILD=	Yes
NO_REGRESS=	Yes

INST_DIR=	${PREFIX}/lib/X11/fonts/ecoliercourt

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${FULLDISTDIR}/*.ttf ${INST_DIR}

.include <bsd.port.mk>
