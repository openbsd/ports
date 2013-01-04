# $OpenBSD: Makefile,v 1.18 2013/01/04 15:50:26 dcoppa Exp $

COMMENT =		official Last.fm client

VER =			1.5.4.27091
DISTNAME =		lastfm-${VER}+dfsg
PKGNAME =		last.fm-${VER}
REVISION =		9

SHARED_ONLY =		Yes

SHARED_LIBS =		Moose 0.0 \
			LastFmTools 0.0

CATEGORIES =		audio

HOMEPAGE =		http://www.last.fm/

MASTER_SITES =		http://dev.gentoo.org/~hwoarang/distfiles/

DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			dbusextension-2.0.tar.bz2

DIST_SUBDIR =		lastfm

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		ICE QtDBus QtGui QtNetwork QtSql \
			QtXml SM X11 Xext Xi Xinerama Xrender \
			c fontconfig freetype gpod>=700 m mad \
			portaudio pthread sndio stdc++ z

MODULES =		x11/qt4

LIB_DEPENDS =		audio/libgpod \
			audio/libmad \
			audio/portaudio-svn \
			${MODQT4_LIB_DEPENDS}>=4.7.2

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/xdg-utils

NO_REGRESS =		Yes

LASTFM_LIBDIR = ${PREFIX}/lib/last.fm
LASTFM_DATADIR = ${PREFIX}/share/last.fm
MOOSELIB = ${WRKBUILD}/bin/libMoose.so.${LIBMoose_VERSION}
TOOLSLIB = ${WRKBUILD}/bin/libLastFmTools.so.${LIBLastFmTools_VERSION}

post-extract:
	mv ${WRKDIR}/dbus ${WRKSRC}/src/extensions/

pre-patch:
	cd ${WRKSRC}; perl -pi -e "s/\r$$//"\
	 `find . -type f -name *.h -or -name *.cpp -or -name '*.pro*'`

pre-configure:
	${SUBST_CMD} \
	${WRKSRC}/src/libMoose/libMoose.pro \
	${WRKSRC}/src/libMoose/MooseCommon.cpp \
	${WRKSRC}/src/libUnicorn/libUnicorn.pro \
	${WRKSRC}/src/mediadevices/ipod/ipod.pro \
	${WRKSRC}/src/output/portAudio/portAudio.pro \
	${WRKSRC}/src/src.pro \
	${WRKSRC}/src/transcode/mad/mad.pro

do-configure:
	perl -pi -e "s/!!CXXFLAGS!!/${CXXFLAGS}/" \
		${WRKSRC}/src/libUnicorn/unicorn.pro.inc
	cd ${WRKBUILD} && QTDIR=${WRKDIR}/bin qmake4 -config release
	cd ${WRKBUILD}/src/extensions/dbus && \
		QTDIR=${WRKDIR}/bin qmake4 dbusextension.pro

post-build:
	cd ${WRKBUILD}/src/extensions/dbus && \
		exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
			${MAKE_FLAGS} -f ${MAKE_FILE} all

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/last.fm ${PREFIX}/bin/last.fm
	${INSTALL_DATA} ${MOOSELIB} ${PREFIX}/lib/
	${INSTALL_DATA} ${TOOLSLIB} ${PREFIX}/lib/
	${INSTALL_DATA_DIR} ${LASTFM_LIBDIR}/extensions
	${INSTALL_DATA} ${WRKBUILD}/bin/extensions/*.so \
		${LASTFM_LIBDIR}/extensions/
	${INSTALL_DATA_DIR} ${LASTFM_LIBDIR}/services
	${INSTALL_DATA} ${WRKBUILD}/bin/services/*.so \
		${LASTFM_LIBDIR}/services/
	${INSTALL_DATA_DIR} ${LASTFM_DATADIR}
	${INSTALL_DATA_DIR} ${LASTFM_DATADIR}/buttons
	${INSTALL_DATA_DIR} ${LASTFM_DATADIR}/icons
	${INSTALL_DATA_DIR} ${LASTFM_DATADIR}/i18n
	${INSTALL_DATA} ${WRKBUILD}/bin/data/*.{gif,mng,png} \
		${LASTFM_DATADIR}/
	${INSTALL_DATA} ${WRKBUILD}/bin/data/buttons/*.png \
		${LASTFM_DATADIR}/buttons/
	${INSTALL_DATA} ${WRKBUILD}/bin/data/icons/*.png \
		${LASTFM_DATADIR}/icons/
	${INSTALL_DATA} ${FILESDIR}/*.png ${LASTFM_DATADIR}/icons/
	cd ${WRKBUILD}/i18n && ${LOCALBASE}/bin/lrelease4 *.ts
	${INSTALL_DATA} ${WRKBUILD}/i18n/*.qm \
		${LASTFM_DATADIR}/i18n/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} \
		-c ${FILESDIR}/lastfm.desktop \
		${PREFIX}/share/applications/lastfm.desktop

.include <bsd.port.mk>
