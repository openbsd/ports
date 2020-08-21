# $OpenBSD: Makefile,v 1.1 2020/08/21 13:53:30 edd Exp $

COMMENT =		slender typeface for code (default variant)
PKGNAME =		iosevka-${V}
DISTFILES =		ttc-iosevka-${V}${EXTRACT_SUFX}

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttc ${FONTDIR}

.include <bsd.port.mk>
