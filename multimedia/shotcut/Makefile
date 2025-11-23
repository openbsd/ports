USE_WXNEEDED =	Yes

COMMENT =	video editor

V =		25.10.31

DIST_TUPLE =	github mltframework shotcut v${V} .
PKGNAME =	shotcut-${V}

CATEGORIES =	multimedia

HOMEPAGE =	https://www.shotcut.org/

MAINTAINER =	Josh Grosse <josh@jggimi.net>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Charts Qt6Core Qt6DBus Qt6Gui
WANTLIB += Qt6Multimedia Qt6Network Qt6OpenGL Qt6OpenGLWidgets
WANTLIB += Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6QuickControls2 Qt6QuickWidgets Qt6Sql Qt6WebSockets
WANTLIB += Qt6Widgets Qt6Xml X11 c fftw3 m mlt++-7 mlt-7

MODULES =		devel/cmake \
			x11/qt6

BUILD_DEPENDS =		audio/jack \
			devel/sdl2 \
			x11/qt6/qtwebsockets

RUN_DEPENDS =		audio/jack \
			devel/desktop-file-utils \
			devel/sdl2 \
			misc/shared-mime-info \
			multimedia/mlt7,-gpl2 \
			x11/gtk+4,-guic \
			x11/qt6/qtwebsockets

LIB_DEPENDS =		math/fftw3 \
			multimedia/mlt7 \
			x11/qt6/qtdeclarative \
			x11/qt6/qtcharts \
			x11/qt6/qtmultimedia

NO_TEST =		Yes

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_MANDIR=${PREFIX}/man/
CONFIGURE_ARGS +=	-DSHOTCUT_VERSION=${V}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
