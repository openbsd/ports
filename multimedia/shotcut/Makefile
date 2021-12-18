# $OpenBSD: Makefile,v 1.8 2021/12/18 06:53:38 espie Exp $

USE_WXNEEDED =	Yes
COMMENT =	video editor

V =		21.10.31
DISTNAME =	shotcut-$V

CATEGORIES =	multimedia

HOMEPAGE =	https://www.shotcut.org/

# GPLv3+
PERMIT_PACKAGE =	Yes
DEBUG_PACKAGES =	${BUILD_PACKAGES}

GH_ACCOUNT =	mltframework
GH_PROJECT =	shotcut
GH_TAGNAME =	v$V

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL Qt5Core Qt5Gui Qt5Multimedia Qt5Network Qt5OpenGL
WANTLIB += Qt5PrintSupport Qt5Qml Qt5Quick Qt5QuickWidgets Qt5Sql
WANTLIB += Qt5WebSockets Qt5Widgets
WANTLIB += Qt5Xml c m mlt-7 mlt++-7
WANTLIB += Qt5QuickControls2
WANTLIB += Qt5QmlModels


COMPILER =		base-clang ports-gcc base-gcc
MODULES =		devel/qmake \
			x11/qt5
RUN_DEPENDS =		audio/jack \
			devel/desktop-file-utils \
			devel/sdl2 \
			misc/shared-mime-info \
			multimedia/mlt7,-gpl2 \
			x11/gtk+3,-guic \
			x11/qt5/qtgraphicaleffects \
			x11/qt5/qtquickcontrols
LIB_DEPENDS =		multimedia/mlt7 \
			x11/qt5/qtmultimedia \
			x11/qt5/qtwebsockets \
			x11/qt5/qtquickcontrols2

CONFIGURE_STYLE =	qmake

NO_TEST =		Yes

.include <bsd.port.mk>
