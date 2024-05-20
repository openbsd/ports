COMMENT =	KDE versatile math calculator
DISTNAME =	kcalc-${VERSION}
CATEGORIES =	x11 math

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6GuiAddons KF6I18n KF6Notifications KF6WidgetsAddons
WANTLIB += KF6XmlGui Qt6Core Qt6Core5Compat Qt6DBus Qt6Gui Qt6Widgets
WANTLIB += Qt6Xml c gmp m mpfr

MODKDE5_DESKTOP_FILE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

LIB_DEPENDS =	devel/gmp \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/knotifications \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/mpfr \
		x11/qt6/qt5compat

.include <bsd.port.mk>
