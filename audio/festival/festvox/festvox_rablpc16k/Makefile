# $OpenBSD: Makefile,v 1.2 2007/09/15 22:27:39 simon Exp $

COMMENT=	British English RP male speaker (RAB) at 16KHz sampling
DISTNAME=	festvox_rablpc16k

# Depends on festlex_OALD which is free for non-commercial use only
PERMIT_DISTFILES_CDROM=	no fee
PERMIT_PACKAGE_CDROM=	no fee

RUN_DEPENDS=	${VOX_UK_DEPS}

do-install:
	${INSTALL_DATA_DIR} ${VOX_PRE}/english/rab_diphone
	${INSTALL_DATA_DIR} ${VOX_PRE}/english/rab_diphone/festvox
	${INSTALL_DATA_DIR} ${VOX_PRE}/english/rab_diphone/group
	${INSTALL_DATA} ${VOX_WRK}/english/rab_diphone/COPYING \
		${VOX_PRE}/english/rab_diphone
	${INSTALL_DATA} ${VOX_WRK}/english/rab_diphone/festvox/* \
		${VOX_PRE}/english/rab_diphone/festvox
	${INSTALL_DATA} ${VOX_WRK}/english/rab_diphone/group/* \
		${VOX_PRE}/english/rab_diphone/group

.include <bsd.port.mk>
