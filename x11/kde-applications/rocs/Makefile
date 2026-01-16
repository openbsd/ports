COMMENT =	graph theory IDE for KDE
DISTNAME =	rocs-${VERSION}
CATEGORIES =	games education
REVISION =	0

HOMEPAGE =	https://apps.kde.org/rocs/

SHARED_LIBS +=  rocsgraphtheory        7.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6GuiAddons KF6I18n KF6ItemViews KF6KIOCore
WANTLIB += KF6Parts KF6SonnetUi KF6SyntaxHighlighting KF6TextEditor
WANTLIB += KF6TextTemplate KF6TextWidgets KF6WidgetsAddons KF6XmlGui
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Qml
WANTLIB += Qt6Quick Qt6QuickWidgets Qt6Widgets Qt6Xml c m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

BUILD_DEPENDS =	devel/boost \
		x11/qt6/qtsvg

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kparts \
		devel/kf6/ktexteditor \
		devel/kf6/ktexttemplate \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/sonnet \
		devel/kf6/syntax-highlighting \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
