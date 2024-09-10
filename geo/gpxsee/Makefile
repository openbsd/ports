COMMENT =	gpx file viewer

GH_PROJECT =	GPXSee
GH_ACCOUNT =	tumic0
GH_TAGNAME =	13.24
PKGNAME =	${DISTNAME:L}

CATEGORIES =	geo x11

HOMEPAGE =	https://www.gpxsee.org
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes
MODULES =	devel/qmake x11/qt6

RUN_DEPENDS+=	devel/desktop-file-utils
RUN_DEPENDS +=	misc/shared-mime-info
RUN_DEPENDS +=	x11/gtk+4,-guic

LIB_DEPENDS +=	x11/qt6/qtpositioning \
		x11/qt6/qtserialport \
		x11/qt6/qtsvg

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Gui
WANTLIB += Qt6Network Qt6OpenGL Qt6OpenGLWidgets Qt6Positioning
WANTLIB += Qt6PrintSupport Qt6SerialPort Qt6Sql Qt6Svg Qt6Widgets
WANTLIB += c m xkbcommon

.include <bsd.port.mk>
