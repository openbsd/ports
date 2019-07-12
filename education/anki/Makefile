# $OpenBSD: Makefile,v 1.19 2019/07/12 20:46:07 sthen Exp $

BROKEN =	Trace/BPT trap, cti_vm_throw() from /usr/local/lib/libQtWebKit.so.4.0
# ...and anki-2.1.x requires QtWebEngine (not currently ported to OpenBSD)

COMMENT	=	flashcard learning system with spaced repetition

DISTNAME =	anki-2.0.52
EXTRACT_SUFX =	-source.tgz

CATEGORIES =	education

HOMEPAGE =	https://ankisrs.net/

# AGPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://apps.ankiweb.net/downloads/archive/ \
		https://apps.ankiweb.net/downloads/current/ \
		https://apps.ankiweb.net/downloads/beta/

MODULES =	lang/python

MODPY_ADJ_FILES = anki/anki

RUN_DEPENDS =	audio/py-audio \
		devel/desktop-file-utils \
		devel/py-send2trash \
		www/py-beautifulsoup \
		www/py-httplib2>=0.7.7 \
		x11/mplayer \
		x11/py-qt4

CONFIGURE_STYLE	= none

NO_TEST =	Yes

do-build:
	${MODPY_BIN} -mcompileall ${WRKSRC}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/anki/anki ${PREFIX}/bin
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
	rm ${WRKINST}/${MODPY_SITEPKG}/anki/*.orig

.include <bsd.port.mk>
