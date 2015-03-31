# $OpenBSD: Makefile,v 1.4 2015/03/31 09:45:09 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	dip pen style TTF fonts

DISTNAME=	ecoliercourt-fonts-0.1
DISTFILES=	ecl_cour.ttf ec_cour.ttf

REVISION=	2

CATEGORIES=	fonts x11 education

# Open Font License
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://distfiles.bsdfrog.org/

DIST_SUBDIR=	ecoliercourt
EXTRACT_ONLY=

NO_BUILD=	Yes
NO_TEST=	Yes

INST_DIR=	${PREFIX}/share/fonts/ecoliercourt

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${FULLDISTDIR}/*.ttf ${INST_DIR}

.include <bsd.port.mk>
