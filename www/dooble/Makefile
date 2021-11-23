# $OpenBSD: Makefile,v 1.3 2021/11/23 14:00:45 bcallah Exp $

COMMENT =	small, lightweight QtWebEngine web browser
CATEGORIES =	www x11

GH_ACCOUNT =	textbrowser
GH_PROJECT =	dooble
GH_TAGNAME =	2021.11.05

HOMEPAGE =	https://textbrowser.github.io/dooble/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Charts Qt5Concurrent Qt5Core
WANTLIB += Qt5Gui Qt5Network Qt5Positioning Qt5PrintSupport Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick Qt5Sql Qt5WebChannel Qt5WebEngine
WANTLIB += Qt5WebEngineCore Qt5WebEngineWidgets Qt5Widgets Qt5Xml
WANTLIB += c m

MODULES =	devel/qmake \
		x11/qt5

LIB_DEPENDS =	x11/qt5/qtcharts \
		x11/qt5/qtwebengine

RUN_DEPENDS =	devel/desktop-file-utils

# Error processing project file: ./dooble.pro
SEPARATE_BUILD =	No

# make: don't know how to make Icons/Material\ (prerequisite of: temp/rcc/qrc_icons.cpp)
USE_GMAKE =	Yes

NO_TEST =	Yes

# No install routine.
# Taken from FreeBSD.
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/Dooble ${PREFIX}/bin/dooble
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${SUBST_CMD} -c ${WRKSRC}/dooble.desktop \
		${PREFIX}/share/applications/dooble.desktop
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/Icons/Logo/dooble.png \
		${PREFIX}/share/pixmaps

.include <bsd.port.mk>
