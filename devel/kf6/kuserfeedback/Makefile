COMMENT =	KDE framework for collecting user feedback
DISTNAME =	kuserfeedback-${VERSION}
REVISION =	0

SHARED_LIBS +=  KF6UserFeedbackCore       0.0 # 0.0
SHARED_LIBS +=  KF6UserFeedbackWidgets    0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6Qml
WANTLIB += Qt6Widgets m

CATEGORIES =	productivity

BUILD_DEPENDS =	devel/bison \
		x11/qt6/qttools

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	x11/qt6/qtdeclarative

CONFIGURE_ARGS +=	-DENABLE_PHP=OFF \
			-DENABLE_PHP_UNIT=OFF

.include <bsd.port.mk>
