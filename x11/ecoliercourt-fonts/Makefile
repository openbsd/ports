# $OpenBSD: Makefile,v 1.1.1.1 2007/07/22 08:10:08 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	dip pen style TTF fonts

DISTNAME=	ecoliercourt-fonts-0.1
DISTFILES=	ecl_cour.ttf ec_cour.ttf
CATEGORIES=	x11 education

# in French
HOMEPAGE=	http://perso.orange.fr/jm.douteau/page_ecolier.htm

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# Open Font License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://perso.orange.fr/jm.douteau/polices/

DIST_SUBDIR=	ecoliercourt
EXTRACT_ONLY=

NO_BUILD=	Yes
NO_REGRESS=	Yes

INST_DIR=	${PREFIX}/lib/X11/fonts/ecoliercourt

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${FULLDISTDIR}/*.ttf ${INST_DIR}

.include <bsd.port.mk>
