# $OpenBSD: Makefile,v 1.1.1.1 2019/05/07 08:38:21 bentley Exp $

COMMENT =		strong, neutral, principles-driven typeface

V =			1.0.0
DISTNAME =		public-sans-v$V
PKGNAME =		public-sans-$V

CATEGORIES =		fonts

HOMEPAGE =		https://public-sans.digital.gov/

# SIL OFL 1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/uswds/public-sans/releases/download/v$V/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/public-sans

FIX_EXTRACT_PERMISSIONS =	Yes

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/fonts/otf/*.otf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/fonts/webfonts/*.* ${FONTDIR}

.include <bsd.port.mk>
