COMMENT =	texas holdem poker client, local or internet games

V =		2.1.9
DIST_TUPLE =	github pokerth pokerth v${V} .
PKGNAME =	pokerth-${V}

CATEGORIES =	games

MAINTAINER =	Josh Grosse <josh@jggimi.net>

# AGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6Sql Qt6Widgets Qt6Xml boost_atomic-mt
WANTLIB += boost_chrono-mt boost_container-mt boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_program_options-mt boost_random-mt boost_regex-mt
WANTLIB += boost_thread-mt c crypto iconv m protobuf ssl

MODULES =	devel/cmake \
		x11/qt6
SUBST_VARS +=	MODQT_QTDIR

FLAVORS =	legacy
FLAVOR?=

.if ${FLAVOR:Mlegacy}
ALL_TARGET =	pokerth_client
.else
WANTLIB +=	Qt6OpenGL Qt6Qml Qt6Quick Qt6QuickControls2 Qt6Svg
ALL_TARGET =	pokerth_client pokerth_qml-client
.endif

MODCMAKE_LDFLAGS +=	-L${LOCALBASE}/lib -liconv
DEBUG_PACKAGES =	${BUILD_PACKAGES}

BUILD_DEPENDS +=	x11/qt6/qtwebsockets

LIB_DEPENDS +=	devel/boost,-main
LIB_DEPENDS +=	devel/protobuf
LIB_DEPENDS +=	x11/qt6/qtmultimedia

RUN_DEPENDS +=	devel/desktop-file-utils

pre-build:
	${SUBST_CMD} ${WRKSRC}/pokerth.desktop ${WRKSRC}/pokerth_qml.desktop

.include <bsd.port.arch.mk>

.if !${PROPERTIES:Mlp64}
# memory is too limited for the QML-based client
FLAVOR =	legacy
.endif

.include <bsd.port.mk>
