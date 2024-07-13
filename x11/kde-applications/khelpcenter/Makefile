COMMENT =	KDE help center
DISTNAME =	khelpcenter-${VERSION}
CATEGORIES =	x11

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6Bookmarks KF6BookmarksWidgets
WANTLIB += KF6ColorScheme KF6Completion KF6ConfigCore KF6ConfigGui
WANTLIB += KF6ConfigWidgets KF6CoreAddons KF6DBusAddons KF6DocTools
WANTLIB += KF6I18n KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Service KF6Solid KF6TextTemplate KF6WidgetsAddons
WANTLIB += KF6WindowSystem KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Positioning Qt6PrintSupport Qt6Qml Qt6QmlModels
WANTLIB += Qt6Quick Qt6WebChannel Qt6WebEngineCore Qt6WebEngineWidgets
WANTLIB += Qt6Widgets Qt6Xml X11 c m xapian xml2

MODKDE_DESKTOP_FILE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

LIB_DEPENDS =	databases/xapian-core \
		devel/kf6/karchive \
		devel/kf6/kbookmarks \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kdbusaddons \
		devel/kf6/kdoctools \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/ktexttemplate \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		textproc/libxml \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine

.include <bsd.port.mk>
