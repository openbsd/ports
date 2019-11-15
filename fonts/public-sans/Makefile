# $OpenBSD: Makefile,v 1.4 2019/11/15 07:43:53 bentley Exp $

COMMENT =		strong, neutral, principles-driven typeface

V =			1.007
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
	${INSTALL_DATA} ${WRKDIST}/binaries/*/*.{ttf,otf,woff,woff2} \
		${FONTDIR}

.include <bsd.port.mk>
