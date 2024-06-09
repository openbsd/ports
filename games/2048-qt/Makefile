# different port using WebKit, needing W^X...
#DIST_TUPLE =		github	keshavbhatt	2048-qt	3.0	.

COMMENT =		2048 game in Qt
DIST_TUPLE =		github	OpenOrphanage	2048-Qt	v0.1.7	.
CATEGORIES =		games x11
PKGNAME =		${DISTNAME:L}

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

# Qt6 builds and starts, but does not show a window:
#  QQmlApplicationEngine failed to load component
#  qrc:/qml/main.qml:2:1: module "QtQuick.Controls" version 1.1 is not installed

WANTLIB =		${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB +=		Qt5QmlModels Qt5Quick Qt5Widgets c m

MODULES =		devel/qmake \
			x11/qt5

LIB_DEPENDS =		x11/qt5/qtdeclarative

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

MODQMAKE_ARGS =		target.path=${PREFIX}/bin

post-install:
	${INSTALL_MAN} ${WRKSRC}/res/man/${PKGSTEM}.6 ${PREFIX}/man/man6/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/res/${PKGSTEM}.desktop \
	    ${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/scalable/apps/
	${INSTALL_DATA} ${WRKSRC}/res/icons/scalable/apps/${PKGSTEM}.svg \
	    ${PREFIX}/share/icons/hicolor/scalable/apps/

.include <bsd.port.mk>
