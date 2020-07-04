# $OpenBSD: Makefile,v 1.22 2020/07/04 20:18:44 sthen Exp $

COMMENT =	flashcard learning system with spaced repetition
DISTNAME =	anki-2.1.16
EXTRACT_SUFX =	-source.tgz
REVISION =	1

CATEGORIES =	education

HOMEPAGE =	https://apps.ankiweb.net/

# AGPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://apps.ankiweb.net/downloads/archive/

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

# build needs some of the py-qt5 tools; pull them in via
# py-qtwebengine so that build fails early on arches where
# qtwebengine isn't available
BUILD_DEPENDS =	www/py-qtwebengine${MODPY_FLAVOR}

RUN_DEPENDS =	audio/lame \
		audio/py-audio${MODPY_FLAVOR} \
		devel/py-decorator${MODPY_FLAVOR} \
		devel/py-jsonschema${MODPY_FLAVOR} \
		devel/py-send2trash${MODPY_FLAVOR} \
		multimedia/mpv \
		sysutils/py-distro${MODPY_FLAVOR} \
		textproc/py-markdown${MODPY_FLAVOR} \
		www/py-beautifulsoup4${MODPY_FLAVOR} \
		www/py-qtwebengine${MODPY_FLAVOR}
		www/py-requests${MODPY_FLAVOR}

do-build:
.for i in pyuic5 pyrcc5
	ln -fs ${LOCALBASE}/bin/$i${MODPY_BIN_SUFFIX} ${WRKDIR}/bin/$i
.endfor
	cd ${WRKSRC} && ${MAKE_ENV} sh tools/build_ui.sh
	${MODPY_BIN} -mcompileall ${WRKSRC}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/runanki ${PREFIX}/bin/anki
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/anki.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/anki.desktop \
	    ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	cd ${WRKSRC} && ${INSTALL_DATA} anki.xpm anki.png \
	    ${PREFIX}/share/pixmaps
	${INSTALL_DATA_DIR} ${WRKINST}/${MODPY_SITEPKG}
	cd ${WRKSRC} && pax -rw anki ${WRKINST}/${MODPY_SITEPKG}
	cd ${WRKSRC} && pax -rw locale ${WRKINST}/${MODPY_SITEPKG}/anki
	cd ${WRKSRC} && pax -rw aqt ${WRKINST}/${MODPY_SITEPKG}
	cd ${WRKSRC} && pax -rw web ${WRKINST}/${MODPY_SITEPKG}/aqt
	rm ${WRKINST}/${MODPY_SITEPKG}/anki/*.orig
	rm ${WRKINST}/${MODPY_SITEPKG}/aqt/*.orig

.include <bsd.port.mk>
