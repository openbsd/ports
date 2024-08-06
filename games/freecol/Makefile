COMMENT =	free Colonization clone
DISTNAME =	freecol-1.1.0
EXTRACT_SUFX =	.zip
CATEGORIES =	games java x11

HOMEPAGE =	https://www.freecol.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

SITES =		${SITE_SOURCEFORGE:=freecol/}

MODULES =		java
MODJAVA_VER =		11+

RUN_DEPENDS =	java/javaPathHelper

NO_BUILD =	Yes
NO_TEST =	Yes
WRKDIST =	${WRKDIR}/freecol

do-install:
	${SUBST_PROGRAM} ${FILESDIR}/freecol ${PREFIX}/bin/freecol
	${INSTALL_DATA_DIR} ${PREFIX}/share/freecol
	${INSTALL_DATA} ${WRKSRC}/{FreeCol.jar,freecol.xpm} ${PREFIX}/share/freecol
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/freecol
	${INSTALL_DATA} ${WRKSRC}/FreeCol.pdf ${PREFIX}/share/doc/freecol
	cd ${WRKSRC} && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/share/freecol/{}" \;
	cd ${WRKSRC}/data && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/share/freecol/data/{}" \;
	cd ${WRKSRC}/data && find * -type f -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/share/freecol/data/{}" \;
	cd ${WRKSRC}/jars && find * -type f -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/share/freecol/jars/{}" \;

.include <bsd.port.mk>
