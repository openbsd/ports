# $OpenBSD: Makefile,v 1.3 2020/06/01 15:48:28 sthen Exp $

USE_WXNEEDED =	Yes
COMMENT =	video editor

V =		20.04.12
DISTNAME =	shotcut-$V
REVISION =	1

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
WANTLIB += Qt5WebKit Qt5WebKitWidgets Qt5WebSockets Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml X11 c m mlt mlt++

COMPILER =		base-clang ports-gcc base-gcc
MODULES =		devel/qmake \
			x11/qt5
RUN_DEPENDS =		audio/jack \
			devel/desktop-file-utils \
			devel/sdl2 \
			misc/shared-mime-info \
			multimedia/mlt,-gpl2 \
			x11/gtk+3,-guic \
			x11/qt5/qtgraphicaleffects \
			x11/qt5/qtquickcontrols
LIB_DEPENDS =		multimedia/mlt \
			x11/qt5/qtmultimedia \
			x11/qt5/qtwebkit \
			x11/qt5/qtx11extras

CONFIGURE_STYLE =	qmake

NO_TEST =		Yes

.include <bsd.port.mk>
