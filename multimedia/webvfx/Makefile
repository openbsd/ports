# $OpenBSD: Makefile,v 1.1.1.1 2020/05/20 13:49:59 tracey Exp $

USE_WXNEEDED =	Yes
COMMENT =	video effects library

V =		1.2.0
DISTNAME =	webvfx-$V
DISTFILES = 	webvfx-{}$V${EXTRACT_SUFX}

SHARED_LIBS +=  webvfx                    0.0 # 1.2

CATEGORIES =	multimedia

# GPLv3+
PERMIT_PACKAGE =	Yes
DEBUG_PACKAGES =	${BUILD_PACKAGES}

MASTER_SITES = https://github.com/mltframework/webvfx/archive/

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5OpenGL
WANTLIB += Qt5Qml Qt5Quick Qt5WebKit Qt5WebKitWidgets Qt5Widgets
WANTLIB += c m mlt

COMPILER =		base-clang ports-gcc base-gcc
MODULES =		devel/qmake \
			x11/qt5

RUN_DEPENDS =		x11/qt5/qtbase
LIB_DEPENDS =		multimedia/mlt \
 			x11/qt5/qtwebkit

CONFIGURE_STYLE =	qmake

NO_TEST =		Yes

.include <bsd.port.mk>
