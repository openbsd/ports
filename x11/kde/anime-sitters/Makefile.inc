# $OpenBSD: Makefile.inc,v 1.1.1.1 2002/05/08 14:51:49 espie Exp $
CATEGORIES=graphics x11 x11/kde
MASTER_SITES=http://ftp.kde.com/Amusement_Toy/GWay_Sitters/

RUN_DEPENDS=:kdetoys->=3.0:x11/kde/toys3

NO_BUILD=Yes
NO_REGRESS=Yes

AMORDIR=${PREFIX}/share/apps/amor

do-install:
	${INSTALL_DATA_DIR} ${AMORDIR}
	${INSTALL_DATA_DIR} ${AMORDIR}/${SITTER}
	cd ${WRKDIST} && ${INSTALL_DATA} ${DATA} ${AMORDIR}/${SITTER}
	${INSTALL_DATA} ${WRKDIST}/${SITTER}rc ${AMORDIR}

MAINTAINER=	Marc Espie <espie@openbsd.org>
PERMIT_DISTFILES_FTP="Copyrighted anime characters"
PERMIT_DISTFILES_CDROM="Copyrighted anime characters"
PERMIT_PACKAGE_FTP="Copyrighted anime characters"
PERMIT_PACKAGE_CDROM="Copyrighted anime characters"
