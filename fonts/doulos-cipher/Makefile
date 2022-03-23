COMMENT =		Cipher music notation

DISTNAME =		DoulosSILCipher-1.020
PKGNAME =		doulos-cipher-1.020

CATEGORIES =		fonts

HOMEPAGE =		https://software.sil.org/doulos-sil-cipher/

MAINTAINER =		George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://software.sil.org/downloads/r/doulos-sil-cipher/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/DoulosSILCipher_1.020
FONTDIR =		${PREFIX}/share/fonts/doulos-cipher
DOCDIR =		${PREFIX}/share/doc/doulos-cipher

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
