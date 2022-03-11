COMMENT =		slender typeface for code (default variant)
PKGNAME =		iosevka-${V}
DISTFILES =		ttc-iosevka-${V}${EXTRACT_SUFX}

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttc ${FONTDIR}

.include <bsd.port.mk>
