PKG_ARCH =		*

V =			2.200
COMMENT =		New Tai Lue Unicode characters
DISTNAME =		DaiBanna-$V
PKGNAME =		dai-banna-$V
REVISION =		1
CATEGORIES =		fonts

HOMEPAGE =		https://scripts.sil.org/DaiBannaSIL

MAINTAINER =		George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://software.sil.org/downloads/r/daibanna/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${PKGNAME}
FONTDIR =		${PREFIX}/share/fonts/dai-banna
DOCDIR =		${PREFIX}/share/doc/dai-banna

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
