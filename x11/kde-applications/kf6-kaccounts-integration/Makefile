COMMENT =	library and QML module for Accounts-SSO and SignOn-SSO

DISTNAME =	kaccounts-integration-${VERSION}
PKGNAME =	kf6-kaccounts-integration-${VERSION}
REVISION =	0

CATEGORIES =	net devel

SHARED_LIBS +=  kaccounts6                0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6DBusAddons
WANTLIB += KF6I18n KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick
WANTLIB += KF6KIOCore KF6Wallet KF6WidgetsAddons Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Qml Qt6Widgets Qt6Xml accounts-qt6
WANTLIB += m signon-qt6

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DESKTOP_FILE = yes

BUILD_DEPENDS =	devel/qcoro,qt6

LIB_DEPENDS =	devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kwallet \
		devel/kf6/kwidgetsaddons \
		net/libaccounts-qt,qt6 \
		net/signond-qt6 \
		x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
