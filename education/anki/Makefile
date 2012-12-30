# $OpenBSD: Makefile,v 1.3 2012/12/30 02:54:14 fgsch Exp $

COMMENT	=	spaced learning system

DISTNAME =	anki-2.0.3
CATEGORIES =	education

HOMEPAGE =	http://ankisrs.net/

# AGPL3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://ankisrs.net/download/mirror/

EXTRACT_SUFX =	.tgz

MODULES =	lang/python

MODPY_VERSION =	2.7

MODPY_ADJ_FILES = anki

RUN_DEPENDS =	audio/py-audio \
		devel/desktop-file-utils \
		www/py-beautifulsoup \
		www/py-httplib2>=0.7.7 \
		x11/mplayer \
		x11/py-qt4

CONFIGURE_STYLE	= none

NO_REGRESS =	Yes

do-build:
	${MODPY_BIN} -mcompileall -q ${WRKSRC}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/anki ${PREFIX}/bin
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
	cd ${WRKSRC}/libanki && pax -rw anki \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages
	cd ${WRKSRC} && pax -rw aqt \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/{aqt,anki}/*.orig

.include <bsd.port.mk>
