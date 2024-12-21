COMMENT =	flashcard learning system with spaced repetition

#   
# Currently using 2.1.16, the last version before Anki started using Rust
# components.
#   
# In 2.1.35 the build was changed to use Bazel and requires java + python
# + node + rust (which is a pain but could be handled) and wants to
# download at build time (which is a non-starter for ports).
# Anyone looking at updating should take a look at FreeBSD who
# have managed to wrangle it into a shape which can be used there,
# but it is rather complicated. Discussion on AUR maybe useful too
# (https://aur.archlinux.org/packages/anki), and see Anki's discussion
# in https://github.com/ankitects/anki/issues/1378
#
DISTNAME =	anki-2.1.16
EXTRACT_SUFX =	-source.tgz
REVISION =	9

CATEGORIES =	education

HOMEPAGE =	https://apps.ankiweb.net/

# AGPLv3
PERMIT_PACKAGE =	Yes

SITES =		https://apps.ankiweb.net/downloads/archive/

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

# build needs some of the py-qt5 tools; pull them in via
# py-qtwebengine so that build fails early on arches where
# qtwebengine isn't available
BUILD_DEPENDS =	www/py-qtwebengine

RUN_DEPENDS =	audio/lame \
		audio/py-audio \
		devel/py-decorator \
		devel/py-jsonschema \
		devel/py-send2trash \
		multimedia/mpv \
		sysutils/py-distro \
		textproc/py-markdown \
		www/py-beautifulsoup4 \
		www/py-qtwebengine \
		www/py-requests

do-build:
	ln -fs ${LOCALBASE}/bin/{pyuic5,pyrcc5} ${WRKDIR}/bin/$i
	cd ${WRKSRC} && ${MAKE_ENV} sh tools/build_ui.sh

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
	rm ${WRKINST}/${MODPY_SITEPKG}/anki/*${PATCHORIG}
	rm ${WRKINST}/${MODPY_SITEPKG}/aqt/*${PATCHORIG}
	${MODPY_COMPILEALL} ${WRKINST}${MODPY_SITEPKG}

.include <bsd.port.mk>
