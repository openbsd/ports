COMMENT =		slender typeface for code (fixed slab variant)
PKGNAME =		iosevka-fixed-slab-${V}
DISTFILES =		ttc-sgr-iosevka-fixed-slab-${V}${EXTRACT_SUFX}

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttc ${FONTDIR}

.include <bsd.port.mk>
