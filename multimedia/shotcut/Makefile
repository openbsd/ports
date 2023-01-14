USE_WXNEEDED =	Yes

COMMENT =	video editor

GH_ACCOUNT =	mltframework
GH_PROJECT =	shotcut
GH_TAGNAME =	v22.12.21

CATEGORIES =	multimedia

HOMEPAGE =	https://www.shotcut.org/

# GPLv3+
PERMIT_PACKAGE =	Yes
DEBUG_PACKAGES =	${BUILD_PACKAGES}

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Multimedia Qt5Network
WANTLIB += Qt5OpenGL Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickControls2
WANTLIB += Qt5QuickWidgets Qt5Sql Qt5WebSockets Qt5Widgets Qt5Xml
WANTLIB += c fftw3 m mlt++-7 mlt-7

MODULES =		devel/cmake \
			x11/qt5

BUILD_DEPENDS =		audio/jack \
			devel/sdl2

RUN_DEPENDS =		audio/jack \
			devel/desktop-file-utils \
			devel/sdl2 \
			misc/shared-mime-info \
			multimedia/mlt7,-gpl2 \
			x11/gtk+3,-guic \
			x11/qt5/qtgraphicaleffects \
			x11/qt5/qtquickcontrols

LIB_DEPENDS =		math/fftw3 \
			multimedia/mlt7 \
			x11/qt5/qtmultimedia \
			x11/qt5/qtwebsockets \
			x11/qt5/qtquickcontrols2

NO_TEST =		Yes

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_MANDIR=${PREFIX}/man/

.include <bsd.port.mk>
