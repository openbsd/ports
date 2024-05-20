COMMENT =	Dolphin plugins
DISTNAME =	dolphin-plugins-${VERSION}
PKGNAME  =	dolphin-plugins-kf5-${VERSION}
CATEGORIES =	x11

WANTLIB += ${COMPILER_LIBCXX} GL KF6Bookmarks KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6I18n KF6ItemViews KF6JobWidgets KF6KIOCore KF6KIOFileWidgets
WANTLIB += KF6KIOGui KF6KIOWidgets KF6Parts KF6Service KF6Solid
WANTLIB += KF6SonnetUi KF6SyntaxHighlighting KF6TextEditor KF6TextWidgets
WANTLIB += KF6WidgetsAddons KF6XmlGui Qt6Core Qt6Core5Compat Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Widgets Qt6Xml dolphinvcs m

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

LIB_DEPENDS =	devel/kf6/kbookmarks \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/kparts \
		devel/kf6/kservice \
		devel/kf6/ktexteditor \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		devel/kf6/syntax-highlighting \
		x11/kde-applications/dolphin>=${MODKDE_VERSION} \
		x11/qt6/qt5compat

.include <bsd.port.mk>
