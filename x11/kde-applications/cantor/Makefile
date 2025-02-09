USE_WXNEEDED =	Yes

# luajit
USE_NOBTCFI =	Yes

COMMENT =	KDE mathematical applications
DISTNAME =	cantor-${VERSION}
CATEGORIES =	education math

SHARED_LIBS +=  cantorlibs                55.0 # 17.08

WANTLIB += ${COMPILER_LIBCXX} Analitza AnalitzaGui GL KF6Archive
WANTLIB += KF6Attica KF6Bookmarks KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6I18n KF6IconThemes KF6IconWidgets KF6ItemViews
WANTLIB += KF6JobWidgets KF6KIOCore KF6KIOFileWidgets KF6KIOGui
WANTLIB += KF6KIOWidgets KF6NewStuffCore KF6NewStuffWidgets KF6Parts
WANTLIB += KF6Service KF6Solid KF6SonnetUi KF6SyntaxHighlighting
WANTLIB += KF6TextEditor KF6TextWidgets KF6WidgetsAddons KF6XmlGui
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Help Qt6Network Qt6OpenGL
WANTLIB += Qt6Positioning Qt6PrintSupport Qt6Qml Qt6QmlModels
WANTLIB += Qt6Quick Qt6Sql Qt6Svg Qt6WebChannel Qt6WebEngineCore
WANTLIB += Qt6WebEngineWidgets Qt6Widgets Qt6Xml c intl luajit-${MODLUA_VERSION}
WANTLIB += m poppler poppler-qt6 ${MODPY_WANTLIB} qalculate spectre
WANTLIB += util xml2 xslt

WANTLIB += lib/R/lib/R lib/R/lib/Rblas lib/R/lib/Rlapack

MODULES +=	fortran \
		lang/lua \
		lang/python

MODFORTRAN_COMPILER =	gfortran

COMPILER =	base-clang ports-gcc

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

RUN_DEPENDS =	misc/shared-mime-info

LIB_DEPENDS =	devel/gettext,-runtime \
		devel/kf6/attica \
		devel/kf6/karchive \
		devel/kf6/kbookmarks \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knewstuff \
		devel/kf6/kparts \
		devel/kf6/kservice \
		devel/kf6/ktexteditor \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		devel/kf6/syntax-highlighting \
		lang/luajit \
		math/libqalculate \
		math/libqalculate \
		print/libspectre \
		print/poppler,-qt6 \
		x11/qt6/qtdeclarative \
		x11/qt6/qtsvg \
		x11/qt6/qttools \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine \
		x11/kde-applications/analitza>=${MODKDE_GEAR_VERSION}

LIB_DEPENDS +=	math/R

TEST_IS_INTERACTIVE =	X11

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
