COMMENT =	Hex Editor
VERSION =	0.26.60
DISTNAME =	okteta-${VERSION}
CATEGORIES =	editors
EPOCH =		0

KDE_COMMIT =		09e8c273159bc303ac7e7195e43b241c0474ccce
DIST_TUPLE =		kde utilities okteta  ${KDE_COMMIT} .

SHARED_LIBS +=	Kasten5Controllers        0.0 # 0.0
SHARED_LIBS +=	Kasten5Core               0.0 # 0.0
SHARED_LIBS +=	Kasten5Gui                0.0 # 0.0
SHARED_LIBS +=	Kasten5Okteta3Controllers 0.0 # 0.0
SHARED_LIBS +=	Kasten5Okteta3Core        0.0 # 0.0
SHARED_LIBS +=	Kasten5Okteta3Gui         0.0 # 0.0
SHARED_LIBS +=	Okteta4Core               0.0 # 0.0
SHARED_LIBS +=	Okteta4Gui                0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Bookmarks KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6DBusAddons KF6GuiAddons KF6I18n KF6ItemViews
WANTLIB += KF6JobWidgets KF6KIOCore KF6KIOFileWidgets KF6KIOGui
WANTLIB += KF6KIOWidgets KF6Parts KF6Service KF6Solid KF6WidgetsAddons
WANTLIB += KF6XmlGui Qt6Core Qt6Core5Compat Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6PrintSupport Qt6Qml Qt6Widgets Qt6Xml bz2 c lzma
WANTLIB += m z zstd

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKDE_DOCS = yes

RUN_DEPENDS =	misc/shared-mime-info

LIB_DEPENDS =	archivers/bzip2 \
		archivers/xz \
		archivers/zstd \
		devel/kf6/kbookmarks \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/kparts \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		x11/qt6/qt5compat \
		x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
