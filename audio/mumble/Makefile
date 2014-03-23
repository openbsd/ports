# $OpenBSD: Makefile,v 1.7 2014/03/23 18:17:34 kili Exp $

SHARED_ONLY =		Yes

COMMENT =		low-latency voice chat client

DISTNAME =		mumble-1.2.5
REVISION =		1

CATEGORIES =		audio

HOMEPAGE =		http://mumble.sourceforge.net/

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=mumble/}

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		ICE SM X11 Xext Xi Xinerama Xrender c crypto
WANTLIB +=		fontconfig freetype lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB +=		lib/qt4/QtNetwork lib/qt4/QtSql lib/qt4/QtSvg
WANTLIB +=		lib/qt4/QtXml m opus portaudio protobuf
WANTLIB +=		pthread sndfile speex speexdsp ssl stdc++

MODULES =		x11/qt4

BUILD_DEPENDS =		audio/celt07 \
			devel/boost

LIB_DEPENDS =		audio/libsndfile>=1.0.25p0 \
			audio/opus \
			audio/portaudio-svn \
			audio/speex \
			devel/protobuf

RUN_DEPENDS =		audio/celt07 \
			audio/celt=0.11.1v1 \
			devel/desktop-file-utils \
			x11/gtk+2,-guic

QMAKE_ARGS =		MUMBLE_PREFIX=${PREFIX} \
			QMAKE_CC=${CC} \
			QMAKE_CXX=${CXX} \
			QMAKE_CFLAGS="${CFLAGS}" \
			QMAKE_CXXFLAGS="${CXXFLAGS}" \
			QMAKE_LRELEASE=${LOCALBASE}/bin/lrelease4 \
			CONFIG+=no-11x \
			CONFIG+=no-alsa \
			CONFIG+=no-bonjour \
			CONFIG+=no-bundled-celt \
			CONFIG+=no-bundled-opus \
			CONFIG+=no-bundled-speex \
			CONFIG+=no-crash-report \
			CONFIG+=no-embed-qt-translations \
			CONFIG+=no-g15 \
			CONFIG+=no-oss \
			CONFIG+=no-overlay \
			CONFIG+=no-pulseaudio \
			CONFIG+=no-server \
			CONFIG+=no-speechd \
			CONFIG+=no-update \
			CONFIG+=packaged \
			CONFIG+=release \
			DEFINES+="PLUGIN_PATH=${PREFIX}/lib/mumble"

ALL_TARGET =		release

NO_TEST =		Yes

do-configure:
	cd ${WRKSRC} && QTDIR=${WRKDIR}/bin \
		${LOCALBASE}/bin/qmake4 ${QMAKE_ARGS}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/release/mumble \
		${PREFIX}/bin/mumble
	${INSTALL_DATA_DIR} ${PREFIX}/lib/mumble
	${INSTALL_DATA} ${WRKBUILD}/release/plugins/lib*.so \
		${PREFIX}/lib/mumble/
	${INSTALL_MAN} ${WRKBUILD}/man/mumble.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/icons/hicolor/scalable/apps
	${INSTALL_DATA} ${WRKBUILD}/icons/mumble.svg \
		${PREFIX}/share/icons/hicolor/scalable/apps/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKBUILD}/scripts/mumble.desktop \
		${PREFIX}/share/applications/

.include <bsd.port.mk>
