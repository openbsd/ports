COMMENT =		free and healthy typeface for bread and butter use

V =			4.105

DISTNAME =		vollkorn-${V:S/./-/}
PKGNAME =		vollkorn-$V

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =		http://vollkorn-typeface.com/download/
EXTRACT_SUFX =		.zip

CATEGORIES =		fonts

HOMEPAGE =		http://vollkorn-typeface.com/

MODULES =		font

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}

FONTDIR =		${PREFIX}/share/fonts/vollkorn
DOCDIR =		${PREFIX}/share/doc/vollkorn

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/TTF/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/PS-OTF/*.otf ${FONTDIR}
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/OFL.txt ${DOCDIR}

.include <bsd.port.mk>
