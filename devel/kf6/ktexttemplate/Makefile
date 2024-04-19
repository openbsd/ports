UNLINKED = kf6
COMMENT =	KDE configuration system
DISTNAME =	ktexttemplate-${VERSION}

SHARED_LIBS +=  KF6TextTemplate           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Network Qt6Qml m

LIB_DEPENDS =	x11/qt6/qtdeclarative

# for tests
PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11
DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
