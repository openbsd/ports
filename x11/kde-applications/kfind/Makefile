COMMENT =	KDE dialog boxes from shell scripts
DISTNAME =	kfind-${VERSION}
CATEGORIES =	x11

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6FileMetaData KF6I18n KF6JobWidgets KF6KIOCore KF6KIOGui
WANTLIB += KF6KIOWidgets KF6Service KF6Solid KF6WidgetsAddons
WANTLIB += KF6XmlGui Qt6Concurrent Qt6Core Qt6Core5Compat Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Widgets Qt6Xml c m

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
		devel/kf6/kfilemetadata \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		x11/qt6/qt5compat

.include <bsd.port.mk>
