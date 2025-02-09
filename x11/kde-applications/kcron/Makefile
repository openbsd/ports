COMMENT =	KDE-based GUI for cron task scheduler
DISTNAME =	kcron-${VERSION}
CATEGORIES =	x11

WANTLIB += ${COMPILER_LIBCXX} GL KF6AuthCore KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6I18n
WANTLIB += KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick KF6WidgetsAddons
WANTLIB += Qt6Core Qt6Gui Qt6Network Qt6PrintSupport Qt6Qml Qt6Widgets
WANTLIB += c m

MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

BUILD_DEPENDS =	graphics/kirigami-addons
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/dbus,-suid \
		graphics/kirigami-addons

LIB_DEPENDS =	devel/kf6/kauth \
		devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kwidgetsaddons \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
