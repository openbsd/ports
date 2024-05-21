COMMENT =	QtQuick based components set
DISTNAME =	kirigami2-${VERSION}
PKGNAME =	kf5-${DISTNAME}

HOMEPAGE =	https://api.kde.org/frameworks/kirigami/html/index.html

SHARED_LIBS +=  KF5Kirigami2              4.0 # 5.41

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickControls2
WANTLIB += m

BUILD_DEPENDS =	archivers/gtar \
		devel/gettext,-tools \
		x11/qt5/qtgraphicaleffects \
		x11/qt5/qtsvg

RUN_DEPENDS =	x11/qt5/qtgraphicaleffects \
		x11/qt5/qtsvg

RUN_DEPENDS +=	devel/kf6/breeze-icons

LIB_DEPENDS =	x11/qt5/qtquickcontrols2 \
		x11/qt5/qtdeclarative

post-extract:
	@ln -sf ${LOCALBASE}/bin/gtar ${WRKDIR}/bin/tar

.include <bsd.port.mk>
