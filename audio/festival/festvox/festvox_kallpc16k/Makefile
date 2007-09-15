# $OpenBSD: Makefile,v 1.2 2007/09/15 22:27:39 simon Exp $

COMMENT=	American English male speaker (KAL) at 16KHz sampling
DISTNAME=	festvox_kallpc16k

RUN_DEPENDS=	${VOX_US_DEPS}

do-install:
	${INSTALL_DATA_DIR} ${VOX_PRE}/english/kal_diphone
	${INSTALL_DATA_DIR} ${VOX_PRE}/english/kal_diphone/festvox
	${INSTALL_DATA_DIR} ${VOX_PRE}/english/kal_diphone/group
	${INSTALL_DATA} ${VOX_WRK}/english/kal_diphone/COPYING \
		${VOX_PRE}/english/kal_diphone
	${INSTALL_DATA} ${VOX_WRK}/english/kal_diphone/festvox/* \
		${VOX_PRE}/english/kal_diphone/festvox
	${INSTALL_DATA} ${VOX_WRK}/english/kal_diphone/group/* \
		${VOX_PRE}/english/kal_diphone/group

.include <bsd.port.mk>
