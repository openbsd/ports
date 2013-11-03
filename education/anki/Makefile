# $OpenBSD: Makefile,v 1.9 2013/11/03 00:02:55 fgsch Exp $

COMMENT	=	spaced learning system

DISTNAME =	anki-2.0.16

CATEGORIES =	education

HOMEPAGE =	http://ankisrs.net/

MAINTAINER =	Federico G. Schwindt <fgsch@openbsd.org>

# AGPL3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://ankisrs.net/download/mirror/

EXTRACT_SUFX =	.tgz

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
	${MODPY_BIN} -mcompileall -q ${WRKSRC}

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
	${INSTALL_DATA_DIR} \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages
	cd ${WRKSRC} && pax -rw anki \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages
	cd ${WRKSRC} && pax -rw locale \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/anki
	cd ${WRKSRC} && pax -rw aqt \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/anki/*.orig

.include <bsd.port.mk>
