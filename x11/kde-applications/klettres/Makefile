COMMENT =	alphabet learning application for KDE
DISTNAME =	klettres-${VERSION}

CATEGORIES =	education

WANTLIB += ${COMPILER_LIBCXX} GL KF6Attica KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6I18n KF6NewStuffCore KF6NewStuffWidgets KF6WidgetsAddons
WANTLIB += KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Svg
WANTLIB += Qt6Widgets Qt6Xml c m phonon4qt6

MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes
MODKDE5_DESKTOP_FILE = yes

LIB_DEPENDS =	devel/kf6/attica \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/ki18n \
		devel/kf6/knewstuff \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		multimedia/phonon,qt6 \
		x11/qt6/qtsvg

.include <bsd.port.mk>
