COMMENT =	library and QML module for Accounts-SSO and SignOn-SSO

DISTNAME =	kaccounts-integration-${VERSION}

CATEGORIES =	net devel

SHARED_LIBS +=  kaccounts                 0.1 # 0.0

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DESKTOP_FILE = yes

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5DBusAddons
WANTLIB += KF5I18n KF5KIOCore KF5QuickAddons KF5Service KF5Wallet
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick Qt5Widgets Qt5Xml accounts-qt5
WANTLIB += m signon-qt5


BUILD_DEPENDS =	devel/kf5/kcmutils \
		devel/qcoro

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/kdeclarative \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/kwallet \
		net/libaccounts-qt \
		net/signond \
		x11/qt5/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
