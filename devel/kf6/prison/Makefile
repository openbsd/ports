COMMENT =	bar code generator
DISTNAME =	prison-${VERSION}

SHARED_LIBS +=  KF6Prison                 0.0 # 0.0
SHARED_LIBS +=  KF6PrisonScanner          0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6OpenGL Qt6Qml Qt6QmlMeta Qt6QmlModels
WANTLIB += Qt6QmlWorkerScript Qt6Quick ZXing dmtx m qrencode

LIB_DEPENDS =	graphics/libdmtx \
		graphics/libqrencode \
		graphics/zxing-cpp \
		x11/qt6/qtdeclarative \
		x11/qt6/qtmultimedia

.include <bsd.port.mk>
