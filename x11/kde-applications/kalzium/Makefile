COMMENT =	periodic table of elements
DISTNAME =	kalzium-${VERSION}
CATEGORIES =	education math

HOMEPAGE =	https://edu.kde.org/kalzium/

SHARED_LIBS +=  science                   4.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6I18n KF6ItemViews KF6JobWidgets KF6KIOCore KF6KIOGui
WANTLIB += KF6KIOWidgets KF6Plotting KF6Service KF6Solid KF6SonnetUi
WANTLIB += KF6TextWidgets KF6UnitConversion KF6WidgetsAddons KF6XmlGui
WANTLIB += Qt6Core Qt6Core5Compat Qt6DBus Qt6Gui Qt6Network Qt6StateMachine
WANTLIB += Qt6Svg Qt6Widgets Qt6Xml c m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

MODULES +=	lang/python \
		lang/ocaml

MODPY_RUNDEP=	No

BUILD_DEPENDS =	misc/openbabel \
		devel/kf6/karchive \
		devel/kf6/kbookmarks \
		devel/kf6/kparts \
		math/eigen3

RUN_DEPENDS =	misc/openbabel \
		devel/kf6/karchive \
		devel/kf6/kbookmarks \
		devel/kf6/kparts \

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/kplotting \
		devel/kf6/kservice \
		devel/kf6/ktextwidgets \
		devel/kf6/kunitconversion \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		x11/qt6/qt5compat \
		x11/qt6/qtscxml \
		x11/qt6/qtsvg

.include <bsd.port.mk>
