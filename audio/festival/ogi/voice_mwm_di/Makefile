# $OpenBSD: Makefile,v 1.2 2007/09/15 22:27:39 simon Exp $

LANG=	english
VO=	mwm

COMMENT=	american male voice (MWM)
DISTNAME=	voice_${VO}_di-2.0
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} voice_convert_di-2.0${EXTRACT_SUFX}

RUN_DEPENDS=	${OGI_US_DEPS}

JPHDP=            ${PREFIX}/lib/festival/voices/english/mwm2jph_diphone
JPHDW=            ${WRKDIST}/lib/voices/english/mwm2jph_diphone
TLLDP=            ${PREFIX}/lib/festival/voices/english/mwm2tll_diphone
TLLDW=            ${WRKDIST}/lib/voices/english/mwm2tll_diphone

do-install:
	${INSTALL_DATA_DIR} ${OGI_PRE}/dic
	${INSTALL_DATA_DIR} ${OGI_PRE}/festvox
	${INSTALL_DATA_DIR} ${OGI_PRE}/group
	${INSTALL_DATA_DIR} ${JPHDP}/convert
	${INSTALL_DATA_DIR} ${JPHDP}/festvox
	${INSTALL_DATA_DIR} ${TLLDP}/convert
	${INSTALL_DATA_DIR} ${TLLDP}/festvox
	${INSTALL_DATA} ${OGI_WRK}/dic/*.{ms,dat} ${OGI_PRE}/dic
	${INSTALL_DATA} ${OGI_WRK}/festvox/*.{dat,ms,scm} ${OGI_PRE}/festvox
	${INSTALL_DATA} ${OGI_WRK}/group/*.group ${OGI_PRE}/group
	${INSTALL_DATA} ${JPHDW}/convert/*.gmm ${JPHDP}/convert
	${INSTALL_DATA} ${JPHDW}/festvox/*.scm ${JPHDP}/festvox
	${INSTALL_DATA} ${TLLDW}/convert/*.{gmm,vcn} ${TLLDP}/convert
	${INSTALL_DATA} ${TLLDW}/festvox/*.scm ${TLLDP}/festvox

.include <bsd.port.mk>
