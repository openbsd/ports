# $OpenBSD: Makefile,v 1.2 2019/07/12 20:46:13 sthen Exp $

COMMENT =	CNS 11643-compliant Taiwanese government fonts

# fonts extracted from https://www.cns11643.gov.tw/AIDB/Open_Data.zip
# version number taken from 'otfinfo --info *.ttf'
DISTNAME =	taiwan-cns11643-fonts-103.1

HOMEPAGE =	https://data.gov.tw/dataset/5961

CATEGORIES =	fonts chinese x11

# https://data.gov.tw/license
# May be used in compliance with CC-BY-4.0 International
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://www.sizeofvoid.org/pub/OpenBSD/distfiles/ \
		https://distfiles.roadrunner.page/

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

FONTDIR =	${PREFIX}/share/fonts/taiwan-cns11643-fonts
DOCDIR =	${PREFIX}/share/doc/taiwan-cns11643-fonts

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/README ${WRKDIST}/COPYING ${DOCDIR}

.include <bsd.port.mk>
