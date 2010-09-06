# $OpenBSD: Makefile,v 1.3 2010/09/06 00:04:28 sthen Exp $

COMMENT =		official Last.fm client

DISTNAME =		last.fm-1.4.2.58240.src
EXTRACT_SUFX =		.tar.bz2
PKGNAME =		${DISTNAME:S/.src//}
REVISION =		0

SHARED_ONLY =		Yes

SHARED_LIBS =		Moose 0.0 \
			LastFmTools 0.0 \
			LastFmFingerprint 0.0

CATEGORIES =		audio

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

HOMEPAGE =		http://www.last.fm/

MASTER_SITES =		${HOMEPAGE:S/www./cdn./}client/src/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += X11 c m pthread sndio stdc++ z
WANTLIB += QtGui.>=8 QtNetwork.>=7 QtSql.>=7 QtXml.>=7
WANTLIB += fftw3f.>=4 gpod.>=600.0 mad samplerate.>=1 portaudio

MODULES =		x11/qt4

LIB_DEPENDS =		::x11/qt4 \
			::math/fftw3,float \
			::audio/libgpod \
			::audio/libmad \
			::audio/libsamplerate \
			::audio/portaudio-svn
RUN_DEPENDS =		::devel/desktop-file-utils

USE_X11 =		Yes

NO_REGRESS =		Yes

CONFIGURE_STYLE =	simple

WRKDIST =		${WRKDIR}/${DISTNAME:S/.src//}

LASTFM_LIBDIR = ${PREFIX}/lib/last.fm
LASTFM_DATADIR = ${PREFIX}/share/last.fm
MOOSELIB = ${WRKBUILD}/bin/libMoose.so.${LIBMoose_VERSION}
TOOLSLIB = ${WRKBUILD}/bin/libLastFmTools.so.${LIBLastFmTools_VERSION}
FPLIB = \
${WRKBUILD}/bin/libLastFmFingerprint.so.${LIBLastFmFingerprint_VERSION}

pre-patch:
	cd ${WRKSRC}; perl -i -pe 's/\r$$//' \
		`find . -type f -name *.h -or -name *.cpp`

pre-configure:
	${SUBST_CMD} \
	${WRKSRC}/src/container.cpp \
	${WRKSRC}/src/libFingerprint/fplib/pro_qmake/fplib.pro \
	${WRKSRC}/src/libFingerprint/libFingerprint.pro \
	${WRKSRC}/src/libMoose/libMoose.pro \
	${WRKSRC}/src/libMoose/MooseCommon.cpp \
	${WRKSRC}/src/libUnicorn/libUnicorn.pro \
	${WRKSRC}/src/mediadevices/ipod/ipod.pro \
	${WRKSRC}/src/output/portAudio/portAudio.pro \
	${WRKSRC}/src/src.pro \
	${WRKSRC}/src/transcode/mad/mad.pro
# Use system portaudio.h
	@rm -f \
	${WRKSRC}/src/output/portAudio/PortAudio/include/portaudio.h

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
	${INSTALL_DATA} ${WRKBUILD}/bin/data/*.{gif,mng,png} \
		${LASTFM_DATADIR}/
	${INSTALL_DATA} ${WRKBUILD}/bin/data/buttons/*.png \
		${LASTFM_DATADIR}/buttons/
	${INSTALL_DATA} ${WRKBUILD}/bin/data/icons/*.{ico,png} \
		${LASTFM_DATADIR}/icons/
	${INSTALL_DATA} ${FILESDIR}/*.png ${LASTFM_DATADIR}/icons/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/lastfm.desktop \
		${PREFIX}/share/applications/

post-install:
	${SUBST_CMD} ${PREFIX}/share/applications/lastfm.desktop
	@rm -f \
	${PREFIX}/share/applications/lastfm.desktop.beforesubst

.include <bsd.port.mk>
