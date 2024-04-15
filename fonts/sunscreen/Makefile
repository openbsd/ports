MODFONT_FAMILY =	sunscreen
MODFONT_VERSION =	1.0
COMMENT =		disco-inspired display face
DISTNAME =		sunscreen-${MODFONT_VERSION}
CATEGORIES =		fonts

EXTRACT_SUFX =		.zip

HOMEPAGE =		http://www.simon-cozens.org/fonts/sunscreen.html

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

SITES =			http://www.simon-cozens.org/downloads/

MODULES =		font
MODFONT_TYPES =		otf

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${DISTNAME}
DOCDIR =		${PREFIX}/share/doc/sunscreen

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
