COMMENT =		bar code generator
DISTNAME =		prison-${VERSION}
PKGNAME =		prison-kf5-${VERSION}

SHARED_LIBS +=  KF5Prison                 7.0 # 0.0
SHARED_LIBS +=  KF5PrisonScanner          0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Multimedia Qt5Network
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick ZXing dmtx m qrencode

BUILD_DEPENDS =	x11/qt5/qtquickcontrols

RUN_DEPENDS =	x11/qt5/qtquickcontrols

LIB_DEPENDS =	graphics/libdmtx \
		graphics/libqrencode \
		graphics/zxing-cpp \
		x11/qt5/qtdeclarative \
		x11/qt5/qtmultimedia

.include <bsd.port.mk>
