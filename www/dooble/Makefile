USE_WXNEEDED =	Yes

COMMENT =	small, lightweight QtWebEngine web browser
CATEGORIES =	www x11

GH_ACCOUNT =	textbrowser
GH_PROJECT =	dooble
GH_TAGNAME =	2025.07.04

HOMEPAGE =	https://textbrowser.github.io/dooble/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Charts Qt6Concurrent Qt6Core
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6OpenGLWidgets Qt6Positioning
WANTLIB += Qt6PrintSupport Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript
WANTLIB += Qt6Quick Qt6Sql Qt6WebChannel Qt6WebEngineCore Qt6WebEngineWidgets
WANTLIB += Qt6Widgets Qt6Xml c m

MODULES =	devel/qmake \
		x11/qt6

LIB_DEPENDS =	x11/qt6/qtcharts \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine

RUN_DEPENDS =	devel/desktop-file-utils

# Error processing project file: ./dooble.pro
SEPARATE_BUILD =	No

# make: don't know how to make Icons/Material\ (prerequisite of: temp/rcc/qrc_icons.cpp)
USE_GMAKE =	Yes

NO_TEST =	Yes

post-patch:
	${SUBST_CMD} ${WRKSRC}/dooble.pro

# No install routine.
# Taken from FreeBSD.
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/Dooble ${PREFIX}/bin/dooble
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${SUBST_CMD} -c ${WRKSRC}/Distributions/dooble.desktop \
		${PREFIX}/share/applications/dooble.desktop
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/Icons/Logo/dooble.png \
		${PREFIX}/share/pixmaps

.include <bsd.port.mk>
