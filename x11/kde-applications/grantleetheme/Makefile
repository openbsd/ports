COMMENT =	grantlee theme library
DISTNAME =	grantleetheme-${VERSION}
CATEGORIES =	devel x11

SHARED_LIBS +=	KPim6GrantleeTheme        0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Attica KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6GuiAddons
WANTLIB += KF6I18n KF6IconThemes KF6NewStuffCore KF6NewStuffWidgets
WANTLIB += KF6TextTemplate KF6WidgetsAddons KF6XmlGui Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Network Qt6Widgets Qt6Xml m

MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes

LIB_DEPENDS =	devel/kf6/attica \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/knewstuff \
		devel/kf6/ktexttemplate \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
