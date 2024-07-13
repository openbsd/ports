COMMENT =	library and QML module for Accounts-SSO and SignOn-SSO

DISTNAME =	kaccounts-integration-${VERSION}

CATEGORIES =	net devel

SHARED_LIBS +=  kaccounts                 0.1 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5CoreAddons KF5I18n Qt5Core Qt5Gui
WANTLIB += Qt5Network Qt5Qml Qt5Xml accounts-qt5 m signon-qt5

MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DESKTOP_FILE = yes

MODKDE_KF5 = yes

BUILD_DEPENDS =	devel/kf5/kcmutils

LIB_DEPENDS =	devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		net/libaccounts-qt \
		net/signond \
		devel/qcoro \
		x11/qt5/qtdeclarative

CONFIGURE_ARGS =	-DKF6_COMPAT_BUILD=ON

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
