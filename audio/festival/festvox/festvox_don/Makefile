# $OpenBSD: Makefile,v 1.1.1.1 2004/07/11 06:21:51 jolan Exp $

COMMENT=	"British English RP male speaker (DON)"
DISTNAME=	festvox_don

RUN_DEPENDS=	${VOX_UK_DEPS}

# Depends on festlex_OALD which is free for non-commercial use only
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_PACKAGE_CDROM=	"no fee"

do-install:
	${INSTALL_DATA_DIR} ${VOX_PRE}/english/don_diphone
	${INSTALL_DATA_DIR} ${VOX_PRE}/english/don_diphone/festvox
	${INSTALL_DATA} ${VOX_WRK}/english/don_diphone/{COPYING,*.bin,*.txt} \
		${VOX_PRE}/english/don_diphone
	${INSTALL_DATA} ${VOX_WRK}/english/don_diphone/festvox/* \
		${VOX_PRE}/english/don_diphone/festvox

.include <bsd.port.mk>
