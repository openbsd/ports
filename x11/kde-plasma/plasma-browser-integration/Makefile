COMMENT =	Plasma browser integration
DISTNAME =	plasma-browser-integration-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6CoreAddons KF6Crash
WANTLIB += KF6DBusAddons KF6FileMetaData KF6I18n KF6ItemModels
WANTLIB += KF6JobWidgets KF6KIOCore KF6KIOGui KF6Purpose KF6PurposeWidgets
WANTLIB += KF6Runner KF6Service KF6StatusNotifierItem PlasmaActivities
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Qml
WANTLIB += Qt6QmlModels Qt6Quick Qt6Widgets c m taskmanager

MODKDE5_TRANSLATIONS =	Yes

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	devel/kf6/kcrash \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kdbusaddons \
		devel/kf6/kfilemetadata \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kjobwidgets \
		devel/kf6/krunner \
		devel/kf6/kservice \
		devel/kf6/kstatusnotifieritem \
		devel/kf6/purpose \
		x11/kde-plasma/plasma-activities>=${VERSION} \
		x11/kde-plasma/plasma-workspace>=${VERSION} \
		x11/qt6/qtdeclarative

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
