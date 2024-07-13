COMMENT =	Japanese reference tool for KDE
DISTNAME =	kiten-${VERSION}
CATEGORIES =	education

HOMEPAGE =	https://apps.kde.org/kiten

SHARED_LIBS +=  kiten                     4.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6I18n KF6KIOCore KF6WidgetsAddons KF6XmlGui
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Widgets Qt6Xml
WANTLIB += c m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui

.include <bsd.port.mk>
