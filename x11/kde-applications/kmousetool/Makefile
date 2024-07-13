COMMENT =	KDE mouse clicker for accessibility users
DISTNAME =	kmousetool-${VERSION}
CATEGORIES =	x11 inputmethods

WANTLIB += ${COMPILER_LIBCXX} GL ICE KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6DBusAddons
WANTLIB += KF6I18n KF6IconThemes KF6StatusNotifierItem KF6WidgetsAddons
WANTLIB += KF6WindowSystem KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6Widgets Qt6Xml SM X11 Xext Xtst c m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

LIB_DEPENDS =	 devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kstatusnotifieritem \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		x11/qt6/qtmultimedia

.include <bsd.port.mk>
