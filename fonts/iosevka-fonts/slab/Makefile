COMMENT =	slender typeface for code (slab variant)
PKGNAME =	iosevka-slab-${V}
DISTFILES =	ttc-iosevka-slab-${V}${EXTRACT_SUFX}
REVISION =	0

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttc ${FONTDIR}

.include <bsd.port.mk>
