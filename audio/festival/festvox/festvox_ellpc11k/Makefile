# $OpenBSD: Makefile,v 1.4 2013/03/10 22:55:02 espie Exp $

COMMENT=	Castilian Spanish male speaker (EL)
DISTNAME=	festvox_ellpc11k

PERMIT_PACKAGE_CDROM=	no fee

RUN_DEPENDS=	audio/festival/core

do-install:
	${INSTALL_DATA_DIR} ${VOX_PRE}/spanish/el_diphone
	${INSTALL_DATA_DIR} ${VOX_PRE}/spanish/el_diphone/festvox
	${INSTALL_DATA_DIR} ${VOX_PRE}/spanish/el_diphone/group
	${INSTALL_DATA} ${VOX_WRK}/spanish/el_diphone/COPYING \
		${VOX_PRE}/spanish/el_diphone
	${INSTALL_DATA} ${VOX_WRK}/spanish/el_diphone/festvox/* \
		${VOX_PRE}/spanish/el_diphone/festvox
	${INSTALL_DATA} ${VOX_WRK}/spanish/el_diphone/group/* \
		${VOX_PRE}/spanish/el_diphone/group

.include <bsd.port.mk>
