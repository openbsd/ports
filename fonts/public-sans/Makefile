# $OpenBSD: Makefile,v 1.7 2020/05/25 04:30:12 bentley Exp $

COMMENT =		strong, neutral, principles-driven typeface

V =			1.008
DISTNAME =		public-sans-v$V
PKGNAME =		public-sans-$V
REVISION =		1

CATEGORIES =		fonts

HOMEPAGE =		https://public-sans.digital.gov/

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/uswds/public-sans/releases/download/v$V/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}

PKG_ARCH =		*

FONTDIR =		${PREFIX}/share/fonts/public-sans

FIX_EXTRACT_PERMISSIONS =	Yes

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/binaries/*/*.{ttf,otf} \
		${FONTDIR}

.include <bsd.port.mk>
