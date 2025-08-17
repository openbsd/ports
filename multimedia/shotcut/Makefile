USE_WXNEEDED =	Yes

COMMENT =	video editor

GH_ACCOUNT =	mltframework
GH_PROJECT =	shotcut
GH_TAGNAME =	v25.08.16

CATEGORIES =	multimedia

HOMEPAGE =	https://www.shotcut.org/

MAINTAINER =	Josh Grosse <josh@jggimi.net>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Charts Qt6Core Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6OpenGL Qt6OpenGLWidgets Qt6Qml Qt6QmlMeta
WANTLIB += Qt6QmlModels Qt6QmlWorkerScript Qt6Quick Qt6QuickControls2
WANTLIB += Qt6QuickWidgets Qt6Sql Qt6Widgets Qt6Xml c fftw3 m
WANTLIB += mlt++-7 mlt-7

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

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
