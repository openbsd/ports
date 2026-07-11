BROKEN-i386 =	protobuf/abseil problems

COMMENT =	texas holdem poker client, local or internet games

V =		2.1.3
DIST_TUPLE =	github pokerth pokerth v${V} .
PKGNAME =	pokerth-${V}

CATEGORIES =	games

MAINTAINER =	Josh Grosse <josh@jggimi.net>

# AGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6OpenGL Qt6Qml Qt6Quick Qt6QuickControls2
WANTLIB += Qt6Sql Qt6Svg Qt6Widgets Qt6Xml boost_atomic-mt boost_chrono-mt
WANTLIB += boost_container-mt boost_date_time-mt boost_filesystem-mt
WANTLIB += boost_iostreams-mt boost_program_options-mt boost_random-mt
WANTLIB += boost_regex-mt boost_thread-mt c crypto iconv m protobuf
WANTLIB += ssl

MODULES =	devel/cmake \
		x11/qt6
SUBST_VARS +=	MODQT_QTDIR V

ALL_TARGET =	pokerth_client pokerth_qml-client

MODCMAKE_LDFLAGS +=	-L${LOCALBASE}/lib -liconv
DEBUG_PACKAGES =	${BUILD_PACKAGES}

BUILD_DEPENDS +=	x11/qt6/qtwebsockets

LIB_DEPENDS +=	devel/boost,-main
LIB_DEPENDS +=	devel/protobuf
LIB_DEPENDS +=	x11/qt6/qtmultimedia

RUN_DEPENDS +=	devel/desktop-file-utils

pre-build:
	${SUBST_CMD} ${WRKSRC}/pokerth.desktop ${WRKSRC}/pokerth_qml.desktop

.include <bsd.port.mk>
