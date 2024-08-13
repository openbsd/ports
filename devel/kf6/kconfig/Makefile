COMMENT =	KDE configuration system
DISTNAME =	kconfig-${VERSION}

SHARED_LIBS +=  KF6ConfigCore             0.0 # 0.0
SHARED_LIBS +=  KF6ConfigGui              0.0 # 0.0
SHARED_LIBS +=  KF6ConfigQml              0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick Qt6Xml c m

LIB_DEPENDS =	x11/qt6/qtdeclarative

# for tests
PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11
DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
