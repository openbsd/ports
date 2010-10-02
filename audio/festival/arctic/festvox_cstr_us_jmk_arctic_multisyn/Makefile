# $OpenBSD: Makefile,v 1.5 2010/10/02 12:09:08 sthen Exp $

COMMENT=	Canadian English male speaker (JMK), cstr
DISTNAME=	festvox_cstr_us_jmk_arctic_multisyn-1.0
PKGNAME=	${DISTNAME}
REVISION=	1
DIST_SUBDIR=	festival

RUN_DEPENDS=	${ARCTIC_US_DEPS}

do-install:
	${INSTALL_DATA_DIR} ${ARC_PRE}-multisyn/english/cstr_us_jmk_arctic_multisyn/festvox
	${INSTALL_DATA_DIR} ${ARC_PRE}-multisyn/english/cstr_us_jmk_arctic_multisyn/jmk/coef
	${INSTALL_DATA_DIR} ${ARC_PRE}-multisyn/english/cstr_us_jmk_arctic_multisyn/jmk/lpc
	${INSTALL_DATA_DIR} ${ARC_PRE}-multisyn/english/cstr_us_jmk_arctic_multisyn/jmk/utt
	${INSTALL_DATA} ${ARC_WRK}-multisyn/english/cstr_us_jmk_arctic_multisyn/festvox/* \
		${ARC_PRE}-multisyn/english/cstr_us_jmk_arctic_multisyn/festvox
	${INSTALL_DATA} ${ARC_WRK}-multisyn/english/cstr_us_jmk_arctic_multisyn/jmk/utts.* \
		${ARC_PRE}-multisyn/english/cstr_us_jmk_arctic_multisyn/jmk
	${INSTALL_DATA} ${ARC_WRK}-multisyn/english/cstr_us_jmk_arctic_multisyn/jmk/coef/* \
		${ARC_PRE}-multisyn/english/cstr_us_jmk_arctic_multisyn/jmk/coef
	${INSTALL_DATA} ${ARC_WRK}-multisyn/english/cstr_us_jmk_arctic_multisyn/jmk/lpc/*.res \
		${ARC_PRE}-multisyn/english/cstr_us_jmk_arctic_multisyn/jmk/lpc
	${INSTALL_DATA} ${ARC_WRK}-multisyn/english/cstr_us_jmk_arctic_multisyn/jmk/lpc/*.lpc \
		${ARC_PRE}-multisyn/english/cstr_us_jmk_arctic_multisyn/jmk/lpc
	${INSTALL_DATA} ${ARC_WRK}-multisyn/english/cstr_us_jmk_arctic_multisyn/jmk/utt/* \
		${ARC_PRE}-multisyn/english/cstr_us_jmk_arctic_multisyn/jmk/utt
		
.include <bsd.port.mk>
