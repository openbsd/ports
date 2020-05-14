# $OpenBSD: Makefile,v 1.48 2020/05/14 17:55:09 kn Exp $

COMMENT-main =		low-latency voice chat client
COMMENT-server =	low-latency voice chat server

VERSION =		1.3.0
DISTNAME =		mumble-${VERSION}
PKGNAME-main =		mumble-${VERSION}
PKGNAME-server =	murmur-${VERSION}
REVISION-main =		7

CATEGORIES =		audio net

HOMEPAGE =		https://www.mumble.info/

MASTER_SITES =		https://github.com/mumble-voip/mumble/releases/download/1.3.0/

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB-main += ${COMPILER_LIBCXX} GL Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB-main += Qt5Sql Qt5Svg Qt5Widgets Qt5Xml X11 Xi c crypto
WANTLIB-main += m opus portaudio protobuf sndfile speex speexdsp ssl
WANTLIB-server += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Network Qt5Sql
WANTLIB-server += Qt5Xml c crypto m protobuf ssl

MULTI_PACKAGES =	-main -server

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODULES =		devel/qmake x11/qt5

BUILD_DEPENDS =		devel/boost

LIB_DEPENDS-main =	audio/libsndfile>=1.0.25p0 \
			audio/opus \
			audio/portaudio-svn \
			audio/speex \
			devel/protobuf \
			x11/qt5/qtsvg
LIB_DEPENDS-server =	devel/protobuf \
			x11/qt5/qtbase

RUN_DEPENDS-main =	devel/desktop-file-utils \
			x11/gtk+3,-guic

# CONFIG+=c++11 because of protobuf
MODQMAKE_ARGS =		MUMBLE_PREFIX=${PREFIX} \
			QMAKE_LRELEASE=${MODQT_LRELEASE} \
			CONFIG+=c++11 \
			CONFIG+=no-11x \
			CONFIG+=no-alsa \
			CONFIG+=no-ice \
			CONFIG+=no-bonjour \
			CONFIG+=no-bundled-opus \
			CONFIG+=no-bundled-speex \
			CONFIG+=no-crash-report \
			CONFIG+=no-embed-qt-translations \
			CONFIG+=no-g15 \
			CONFIG+=no-jackaudio \
			CONFIG+=no-oss \
			CONFIG+=no-overlay \
			CONFIG+=no-pulseaudio \
			CONFIG+=no-speechd \
			CONFIG+=no-update \
			CONFIG+=bundled-celt \
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

post-patch:
	${SUBST_CMD} ${WRKSRC}/scripts/murmur.ini

pre-configure:
	cd ${WRKSRC}/src/mumble/ && QTDIR=${WRKDIR}/bin \
		${MODQT_LRELEASE} *.ts

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mumble \
		${PREFIX}/bin/mumble
	${INSTALL_PROGRAM} ${WRKBUILD}/murmurd \
		${PREFIX}/sbin/murmurd
	${INSTALL_DATA_DIR} ${PREFIX}/lib/mumble
	${INSTALL_DATA} ${WRKBUILD}/plugins/lib*.so \
		${PREFIX}/lib/mumble/
	${INSTALL_DATA_DIR} ${PREFIX}/share/mumble/locale
	${INSTALL_DATA} ${WRKSRC}/src/mumble/*.qm \
		${PREFIX}/share/mumble/locale/
	${INSTALL_MAN} ${WRKSRC}/man/{mumble,murmurd}.1 \
		${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/icons/hicolor/scalable/apps
	${INSTALL_DATA} ${WRKSRC}/icons/mumble.svg \
		${PREFIX}/share/icons/hicolor/scalable/apps/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/scripts/mumble.desktop \
		${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/murmur
	${INSTALL_DATA} ${WRKSRC}/scripts/murmur.ini \
		${PREFIX}/share/examples/murmur/

.include <bsd.port.mk>
