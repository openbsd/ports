COMMENT =	KDE password wallet manager
DISTNAME =	kwalletmanager-${VERSION}
CATEGORIES =	x11 security

HOMEPAGE =	https://userbase.kde.org/KDE_Wallet_Manager

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6AuthCore KF6Codecs
WANTLIB += KF6ColorScheme KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6CoreAddons KF6Crash KF6DBusAddons KF6GuiAddons KF6I18n
WANTLIB += KF6ItemViews KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick
WANTLIB += KF6KIOCore KF6KIOGui KF6Service KF6StatusNotifierItem
WANTLIB += KF6Wallet KF6WidgetsAddons KF6WindowSystem KF6XmlGui
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Qml Qt6Widgets
WANTLIB += Qt6Xml X11 c m

MODKDE_DESKTOP_FILE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes
MODKDE_ICON_CACHE = yes

BUILD_DEPENDS =	devel/kf6/ktextwidgets

RUN_DEPENDS =	devel/kf6/ktextwidgets \
		x11/dbus,-suid

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kauth \
		devel/kf6/kcmutils \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kservice \
		devel/kf6/kguiaddons \
		devel/kf6/kstatusnotifieritem \
		devel/kf6/kwallet \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
