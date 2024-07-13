COMMENT =	KIO Slave to access Google Drive
DISTNAME =	kio-gdrive-${VERSION}
CATEGORIES =	www x11

WANTLIB += ${COMPILER_LIBCXX} GL KF6Completion KF6ConfigCore KF6CoreAddons
WANTLIB += KF6I18n KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Notifications KF6Purpose KF6Service KF6Solid KF6WidgetsAddons
WANTLIB += KPim6GAPICore KPim6GAPIDrive Qt6Core Qt6DBus Qt6Gui
WANTLIB += Qt6Network Qt6Widgets Qt6Xml accounts-qt6 kaccounts6
WANTLIB += m

MODKDE_TRANSLATIONS = yes
MODKDE_DOCS = yes

BUILD_DEPENDS =	textproc/intltool

LIB_DEPENDS =	devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/knotifications \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kjobwidgets \
		devel/kf6/purpose \
		devel/kf6/solid \
		net/libaccounts-qt,qt6 \
		x11/kde-applications/kf6-kaccounts-integration>=${MODKDE_VERSION} \
		x11/kde-applications/libkgapi>=${MODKDE_VERSION}

.include <bsd.port.mk>
