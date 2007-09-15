# $OpenBSD: Makefile,v 1.2 2007/09/15 22:27:38 simon Exp $

COMMENT=	American English male speaker (BDL)
DISTNAME=	festvox_cmu_us_bdl_arctic_hts

RUN_DEPENDS=	${ARCTIC_US_DEPS}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/festvox_cmu_us_bdl_arctic_hts
	${INSTALL_DATA_DIR} ${ARC_PRE}/us/cmu_us_bdl_arctic_hts
	${INSTALL_DATA_DIR} ${ARC_PRE}/us/cmu_us_bdl_arctic_hts/festvox
	${INSTALL_DATA_DIR} ${ARC_PRE}/us/cmu_us_bdl_arctic_hts/hts
	${INSTALL_DATA} ${ARC_WRK}/us/cmu_us_bdl_arctic_hts/COPYING \
		${PREFIX}/share/doc/festvox_cmu_us_bdl_arctic_hts
	${INSTALL_DATA} ${ARC_WRK}/us/cmu_us_bdl_arctic_hts/festvox/* \
		${ARC_PRE}/us/cmu_us_bdl_arctic_hts/festvox
	${INSTALL_DATA} ${ARC_WRK}/us/cmu_us_bdl_arctic_hts/hts/* \
		${ARC_PRE}/us/cmu_us_bdl_arctic_hts/hts

.include <bsd.port.mk>
