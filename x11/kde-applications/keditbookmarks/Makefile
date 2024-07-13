COMMENT =	KDE bookmarks editor
DISTNAME =	keditbookmarks-${VERSION}
CATEGORIES =	x11

SHARED_LIBS +=  kbookmarkmodel_private    2.0 # 5.97

WANTLIB += ${COMPILER_LIBCXX} GL KF6Bookmarks KF6Codecs KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6CoreAddons KF6I18n KF6IconThemes KF6IconWidgets
WANTLIB += KF6KIOCore KF6KIOGui KF6Parts KF6Service KF6WidgetsAddons
WANTLIB += KF6WindowSystem KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6Widgets Qt6Xml X11 c m

MODKDE_DESKTOP_FILE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

LIB_DEPENDS =	devel/kf6/kbookmarks \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kparts \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui

.include <bsd.port.mk>
