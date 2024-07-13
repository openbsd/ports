COMMENT =	printing management for KDE
DISTNAME =	print-manager-${VERSION}

# From KDE Gear 23.08.4 to KDE Plasma 6.0
EPOCH =		0

CATEGORIES =	sysutils print

SHARED_LIBS +=  kcupslib                  0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6DBusAddons KF6I18n KF6IconThemes KF6IconWidgets
WANTLIB += KF6JobWidgets KF6KCMUtilsCore KF6KCMUtilsQuick KF6KIOCore
WANTLIB += KF6KIOGui KF6KIOWidgets KF6Notifications KF6Service
WANTLIB += KF6Solid KF6WidgetsAddons KF6WindowSystem Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Qml Qt6Widgets X11 c cups m

MODKDE_DESKTOP_FILE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	net/samba \
		x11/kde-plasma/libplasma>=${VERSION}
RUN_DEPENDS =	net/samba

LIB_DEPENDS =	devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/solid \
		print/cups,-libs \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
