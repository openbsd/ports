UNLINKED = kf6
COMMENT =	KDE framework for collecting user feedback
DISTNAME =	kuserfeedback-${VERSION}

SHARED_LIBS +=  KF6UserFeedbackCore       0.0 # 0.0
SHARED_LIBS +=  KF6UserFeedbackWidgets    0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Charts Qt6Core Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6OpenGLWidgets Qt6PrintSupport Qt6Qml Qt6Svg
WANTLIB += Qt6Widgets c m

CATEGORIES =	productivity

BUILD_DEPENDS =	devel/bison

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	x11/qt6/qtcharts \
		x11/qt6/qtdeclarative \
		x11/qt6/qtsvg

CONFIGURE_ARGS +=	-DENABLE_PHP=OFF \
			-DENABLE_PHP_UNIT=OFF

.include <bsd.port.mk>
