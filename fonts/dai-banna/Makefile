PKG_ARCH =		*

V =			3.000
COMMENT =		New Tai Lue Unicode characters
DISTNAME =		DaiBannaSIL-$V
PKGNAME =		dai-banna-$V
CATEGORIES =		fonts

HOMEPAGE =		https://scripts.sil.org/DaiBannaSIL

MAINTAINER =		George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://software.sil.org/downloads/r/daibanna/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/dai-banna
DOCDIR =		${PREFIX}/share/doc/dai-banna

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
