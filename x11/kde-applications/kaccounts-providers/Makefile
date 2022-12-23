COMMENT =	online account providers for the KAccounts system

DISTNAME =	kaccounts-providers-${VERSION}

CATEGORIES =	net devel

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_ICON_CACHE = yes

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5Declarative
WANTLIB += KF5I18n KF5KIOCore KF5Package KF5Service Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Positioning Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick Qt5WebChannel Qt5WebEngine Qt5WebEngineCore
WANTLIB += Qt5Xml accounts-qt5 kaccounts m

MODULES +=	textproc/intltool

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kdeclarative \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kpackage \
		devel/kf5/kservice \
		x11/kde-applications/kaccounts-integration \
		x11/qt5/qtdeclarative \
		x11/qt5/qtwebchannel \
		x11/qt5/qtwebengine

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
