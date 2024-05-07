COMMENT =	components for porting from KF5/Qt5 to KF6/Qt6

DISTNAME =	plasma5support-${VERSION}

MODKDE5_TRANSLATIONS =	Yes

SHARED_LIBS +=  Plasma5Support            0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6ConfigGui KF6CoreAddons
WANTLIB += KF6I18n Qt6Core Qt6Gui Qt6Network Qt6OpenGL Qt6Qml
WANTLIB += Qt6QmlModels Qt6Quick Qt6Sql Qt6Widgets m

BUILD_DEPENDS =	devel/kf6/kcmutils

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
