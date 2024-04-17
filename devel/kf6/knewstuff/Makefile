COMMENT =	KDE framework for sharing additional application data
DISTNAME =	knewstuff-${VERSION}

SHARED_LIBS +=  KF6NewStuffCore           0.0 # 0.0
SHARED_LIBS +=  KF6NewStuffWidgets        0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6Attica KF6ConfigCore
WANTLIB += KF6CoreAddons KF6I18n KF6Package KF6Syndication KF6WidgetsAddons
WANTLIB += Qt6Core Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels
WANTLIB += Qt6Quick Qt6QuickWidgets Qt6Widgets Qt6Xml c m

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf6/kirigami>=${MODKF6_VERSION}

RUN_DEPENDS =	devel/kf6/kirigami>=${MODKF6_VERSION} \
		devel/desktop-file-utils

LIB_DEPENDS =	devel/kf6/karchive>=${MODKF6_VERSION} \
		devel/kf6/attica>=${MODKF6_VERSION} \
		devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION} \
		devel/kf6/kpackage>=${MODKF6_VERSION} \
		devel/kf6/kwidgetsaddons>=${MODKF6_VERSION} \
		devel/kf6/syndication>=${MODKF6_VERSION} \
		x11/qt6/qtdeclarative

PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
