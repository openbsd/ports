COMMENT =	Hex Editor
VERSION =	0.26.15
DISTNAME =	okteta-${VERSION}
CATEGORIES =	editors
EPOCH =		0

MODKDE_KF5 =	Yes

SHARED_LIBS +=  Kasten4Controllers        0.4 # 0.4
SHARED_LIBS +=  Kasten4Core               1.0 # 0.4
SHARED_LIBS +=  Kasten4Gui                1.0 # 0.4
SHARED_LIBS +=  Kasten4Okteta2Controllers 1.0 # 0.4
SHARED_LIBS +=  Kasten4Okteta2Core        1.0 # 0.4
SHARED_LIBS +=  Kasten4Okteta2Gui         1.0 # 0.4
SHARED_LIBS +=  Okteta3Core               1.0 # 0.10
SHARED_LIBS +=  Okteta3Gui                1.0 # 0.10

SITES =		${SITE_KDE:=stable/okteta/${VERSION}/src/}

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets KF5KCMUtils
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOGui KF5KIOWidgets
WANTLIB += KF5NewStuff KF5NewStuffCore KF5Parts KF5Service KF5Solid
WANTLIB += KF5SonnetUi KF5TextWidgets KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Qml Qt5Script Qt5Widgets Qt5Xml
WANTLIB += X11 c m qca-qt5

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

RUN_DEPENDS =	misc/shared-mime-info

LIB_DEPENDS =	devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcmutils \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		security/qca-qt5 \
		x11/qt5/qtdeclarative \
		x11/qt5/qtscript

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
