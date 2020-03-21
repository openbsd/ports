# $OpenBSD: Makefile,v 1.41 2020/03/21 16:19:27 kn Exp $

COMMENT =		low-latency voice chat client

DISTNAME =		mumble-1.3.0
REVISION =		1

CATEGORIES =		audio

HOMEPAGE =		https://www.mumble.info/

MASTER_SITES =		https://github.com/mumble-voip/mumble/releases/download/1.3.0/

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Sql Qt5Svg Qt5Widgets Qt5Xml X11 Xi c crypto
WANTLIB += m opus portaudio protobuf sndfile speex speexdsp ssl

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODULES =		devel/qmake x11/qt5

BUILD_DEPENDS =		audio/celt07 \
			devel/boost

LIB_DEPENDS =		audio/libsndfile>=1.0.25p0 \
			audio/opus \
			audio/portaudio-svn \
			audio/speex \
			devel/protobuf \
			x11/qt5/qtsvg

RUN_DEPENDS =		audio/celt07 \
			audio/celt=0.11.1v1 \
			devel/desktop-file-utils \
			x11/gtk+3,-guic

# CONFIG+=c++11 because of protobuf
MODQMAKE_ARGS =		MUMBLE_PREFIX=${PREFIX} \
			QMAKE_LRELEASE=${MODQT_LRELEASE} \
			CONFIG+=c++11 \
			CONFIG+=no-11x \
			CONFIG+=no-alsa \
			CONFIG+=no-bonjour \
			CONFIG+=no-bundled-celt \
			CONFIG+=no-bundled-opus \
			CONFIG+=no-bundled-speex \
			CONFIG+=no-crash-report \
			CONFIG+=no-embed-qt-translations \
			CONFIG+=no-g15 \
			CONFIG+=no-jackaudio \
			CONFIG+=no-oss \
			CONFIG+=no-overlay \
			CONFIG+=no-pulseaudio \
			CONFIG+=no-server \
			CONFIG+=no-speechd \
			CONFIG+=no-update \
			CONFIG+=packaged \
			CONFIG+=portaudio \
			CONFIG+=release \
			DEFINES+="LOCALE_PATH=${PREFIX}/share/mumble/locale" \
			DEFINES+="PLUGIN_PATH=${PREFIX}/lib/mumble"

ALL_TARGET =		release

NO_TEST =		Yes

.include <bsd.port.arch.mk>
# pre compilated headers are invalid on gcc archs
.if ${PROPERTIES:Mgcc4}
MODQMAKE_ARGS +=	CONFIG+=no-pch
.endif

pre-configure:
	cd ${WRKSRC}/src/mumble/ && QTDIR=${WRKDIR}/bin \
		${MODQT_LRELEASE} *.ts

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mumble \
		${PREFIX}/bin/mumble
	${INSTALL_DATA_DIR} ${PREFIX}/lib/mumble
	${INSTALL_DATA} ${WRKBUILD}/plugins/lib*.so \
		${PREFIX}/lib/mumble/
	${INSTALL_DATA_DIR} ${PREFIX}/share/mumble/locale
	${INSTALL_DATA} ${WRKSRC}/src/mumble/*.qm \
		${PREFIX}/share/mumble/locale/
	${INSTALL_MAN} ${WRKSRC}/man/mumble.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/icons/hicolor/scalable/apps
	${INSTALL_DATA} ${WRKSRC}/icons/mumble.svg \
		${PREFIX}/share/icons/hicolor/scalable/apps/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/scripts/mumble.desktop \
		${PREFIX}/share/applications/

.include <bsd.port.mk>
