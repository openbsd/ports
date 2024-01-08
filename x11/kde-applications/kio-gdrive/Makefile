COMMENT =	KIO Slave to access Google Drive
DISTNAME =	kio-gdrive-${VERSION}
CATEGORIES =	www x11
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Notifications KF5Purpose KF5Service KF5Solid KF5WidgetsAddons
WANTLIB += KF5WindowSystem KPim5GAPICore KPim5GAPIDrive Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5Xml
WANTLIB += X11 accounts-qt5 kaccounts m

MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

LIB_DEPENDS =	devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/knotifications \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/purpose \
		devel/kf5/solid \
		net/libaccounts-qt \
		x11/kde-applications/kaccounts-integration>=${MODKDE_VERSION} \
		x11/kde-applications/libkgapi>=${MODKDE_VERSION}

.include <bsd.port.mk>
