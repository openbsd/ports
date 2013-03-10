# $OpenBSD: Makefile,v 1.3 2013/03/10 22:55:02 espie Exp $

COMMENT=	British English RP male speaker (DON)
DISTNAME=	festvox_don

RUN_DEPENDS=	${VOX_UK_DEPS}

# Depends on festlex_OALD which is free for non-commercial use only
PERMIT_PACKAGE_CDROM=	no fee

do-install:
	${INSTALL_DATA_DIR} ${VOX_PRE}/english/don_diphone
	${INSTALL_DATA_DIR} ${VOX_PRE}/english/don_diphone/festvox
	${INSTALL_DATA} ${VOX_WRK}/english/don_diphone/{COPYING,*.bin,*.txt} \
		${VOX_PRE}/english/don_diphone
	${INSTALL_DATA} ${VOX_WRK}/english/don_diphone/festvox/* \
		${VOX_PRE}/english/don_diphone/festvox

.include <bsd.port.mk>
