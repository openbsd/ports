# $OpenBSD: Makefile,v 1.2 2019/06/08 09:11:51 bentley Exp $

COMMENT =		strong, neutral, principles-driven typeface

V =			1.005
DISTNAME =		public-sans-v$V
PKGNAME =		public-sans-$V

CATEGORIES =		fonts

HOMEPAGE =		https://public-sans.digital.gov/

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/uswds/public-sans/releases/download/v$V/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}

FONTDIR =		${PREFIX}/share/fonts/public-sans

FIX_EXTRACT_PERMISSIONS =	Yes

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/fonts/otf/*.otf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/fonts/webfonts/*.{ttf,woff*} ${FONTDIR}

.include <bsd.port.mk>
