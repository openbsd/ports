COMMENT =	KDE geometric constructions explorer
DISTNAME =	kig-${VERSION}
CATEGORIES =	education geo

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6GuiAddons KF6I18n KF6IconThemes KF6IconWidgets
WANTLIB += KF6KIOCore KF6Parts KF6SyntaxHighlighting KF6TextEditor
WANTLIB += KF6WidgetsAddons KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6PrintSupport Qt6Svg Qt6Widgets Qt6Xml c m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF6_I18N_CONFLICT = yes
MODKF6_L10N_CONFLICT = yes
MODKDE_DOCS = yes

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kparts \
		devel/kf6/ktexteditor \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/syntax-highlighting \
		x11/qt6/qtsvg

# XXX unbreak boost python support
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_BoostPython=ON

.include <bsd.port.mk>
