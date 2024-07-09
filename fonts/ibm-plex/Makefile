COMMENT =		IBM's corporate type family

MODFONT_FAMILY =	ibm-plex

CATEGORIES =		fonts
V =			6.4.0
PKGNAME =		ibm-plex-$V

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

SITES =			https://github.com/IBM/plex/releases/download/v$V/

DISTFILES =		OpenType.zip \
			TrueType.zip

DIST_SUBDIR =		ibm-plex-$V

HOMEPAGE =		https://www.ibm.com/plex/

MODULES =		font

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/ibm-plex

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/OpenType/*/*.otf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/TrueType/*/*.ttf ${FONTDIR}
	# currently JP fonts only have hinted/unhinted directory,
	# this package use hinted font following Noto fonts.
	${INSTALL_DATA} ${WRKDIST}/OpenType/IBM-Plex-Sans-JP/hinted/*.otf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/TrueType/IBM-Plex-Sans-JP/hinted/*.ttf ${FONTDIR}
	${INSTALL_DATA_DIR} ${MODFONT_DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/OpenType/IBM-Plex-Sans/license.txt ${MODFONT_DOCDIR}

.include <bsd.port.mk>
