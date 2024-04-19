UNLINKED = kf6
COMMENT =	KDE item models extending the Qt model-view framework
DISTNAME =	kitemmodels-${VERSION}

SHARED_LIBS +=  KF6ItemModels             0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Network Qt6Qml m

LIB_DEPENDS =	x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
