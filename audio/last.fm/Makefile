# $OpenBSD: Makefile,v 1.8 2011/03/30 20:51:12 dcoppa Exp $

COMMENT =		official Last.fm client

VER =			1.5.4.27091
DISTNAME =		lastfm-${VER}+dfsg
PKGNAME =		last.fm-${VER}
REVISION =		0

SHARED_ONLY =		Yes

SHARED_LIBS =		Moose 0.0 \
			LastFmTools 0.0 \
			LastFmFingerprint 0.0

CATEGORIES =		audio

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

HOMEPAGE =		http://www.last.fm/

MASTER_SITES =		http://dev.gentoo.org/~hwoarang/distfiles/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += X11 c m pthread sndio stdc++ z
WANTLIB += QtGui>=8 QtNetwork>=7 QtSql>=7 QtXml>=7
WANTLIB += fftw3f>=4 gpod>=600 mad samplerate>=1 portaudio

MODULES =		x11/qt4

LIB_DEPENDS =		math/fftw3,float \
			audio/libgpod \
			audio/libmad \
			audio/libsamplerate \
			audio/portaudio-svn
RUN_DEPENDS =		devel/desktop-file-utils \
			devel/xdg-utils

NO_REGRESS =		Yes

LASTFM_LIBDIR = ${PREFIX}/lib/last.fm
LASTFM_DATADIR = ${PREFIX}/share/last.fm
MOOSELIB = ${WRKBUILD}/bin/libMoose.so.${LIBMoose_VERSION}
TOOLSLIB = ${WRKBUILD}/bin/libLastFmTools.so.${LIBLastFmTools_VERSION}
FPLIB = \
${WRKBUILD}/bin/libLastFmFingerprint.so.${LIBLastFmFingerprint_VERSION}

pre-patch:
	cd ${WRKSRC}; perl -pi -e "s/\r$$//"\
	 `find . -type f -name *.h -or -name *.cpp -or -name '*.pro*'`

pre-configure:
	${SUBST_CMD} \
	${WRKSRC}/src/libFingerprint/fplib/pro_qmake/fplib.pro \
	${WRKSRC}/src/libFingerprint/libFingerprint.pro \
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
	cd ${WRKDIST} && ${LOCALBASE}/bin/qmake4 -config release

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/last.fm ${PREFIX}/bin/last.fm
	${INSTALL_DATA} ${MOOSELIB} ${PREFIX}/lib/
	${INSTALL_DATA} ${TOOLSLIB} ${PREFIX}/lib/
	${INSTALL_DATA} ${FPLIB} ${PREFIX}/lib/
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
