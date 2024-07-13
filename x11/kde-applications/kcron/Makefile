COMMENT =	KDE-based GUI for cron task scheduler
DISTNAME =	kcron-${VERSION}
PKGNAME =	kcron-kf5-${VERSION}
CATEGORIES =	x11

WANTLIB += ${COMPILER_LIBCXX} GL KF6AuthCore KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6I18n KF6JobWidgets KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick
WANTLIB += KF6KIOCore KF6KIOGui KF6KIOWidgets KF6Service KF6Solid
WANTLIB += KF6WidgetsAddons Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6PrintSupport Qt6Qml Qt6Widgets c m

MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/dbus,-suid

LIB_DEPENDS =	devel/kf6/kauth \
		devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/solid \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
