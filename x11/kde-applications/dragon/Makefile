COMMENT =	simple video player for KDE
VERSION =	24.02.2
DISTNAME =	dragon-${VERSION}
CATEGORIES =	multimedia

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6DBusAddons KF6I18n KF6JobWidgets KF6KIOCore
WANTLIB += KF6KIOGui KF6KIOWidgets KF6Parts KF6Service KF6Solid
WANTLIB += KF6WidgetsAddons KF6WindowSystem KF6XmlGui Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Network Qt6Widgets Qt6Xml X11 c m
WANTLIB += phonon4qt6

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

RUN_DEPENDS =	misc/shared-mime-info

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kparts \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		multimedia/phonon,qt6 \
		devel/kf6/solid

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
