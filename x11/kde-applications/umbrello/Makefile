COMMENT =	UML Modeller
DISTNAME =	umbrello-${VERSION}
CATEGORIES =	x11 productivity

HOMEPAGE =	https://umbrello.kde.org/

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6GuiAddons KF6I18n KF6IconThemes KF6JobWidgets
WANTLIB += KF6KIOCore KF6KIOGui KF6KIOWidgets KF6Parts KF6Service
WANTLIB += KF6SyntaxHighlighting KF6TextEditor KF6WidgetsAddons
WANTLIB += KF6WindowSystem KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6PrintSupport Qt6Svg Qt6Widgets Qt6Xml X11 c m xml2
WANTLIB += xslt

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF6_I18N_CONFLICT = yes
MODKF6_L10N_CONFLICT = yes
MODKDE_DOCS = yes

MODULES +=	lang/python

RUN_DEPENDS =	math/graphviz

LIB_DEPENDS =	devel/kf6/ki18n \
		devel/kf6/karchive \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kcrash \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kparts \
		devel/kf6/kservice \
		devel/kf6/ktexteditor \
		devel/kf6/kcolorscheme \
		devel/kf6/kguiaddons \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/kconfigwidgets \
		devel/kf6/syntax-highlighting \
		textproc/libxml \
		textproc/libxslt \
		x11/qt6/qtsvg

CONFIGURE_ARGS =	-DBUILD_APIDOC=OFF \
			-DBUILD_PHP_IMPORT=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \

TEST_IS_INTERACTIVE =	X11
# Depends on clang
CONFIGURE_ARGS +=	-DBUILD_TESTING=OFF

.include <bsd.port.mk>
