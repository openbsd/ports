# Qt5WebEngine
USE_WXNEEDED =	Yes

COMMENT =	non-linear video editor for KDE
DISTNAME =	kdenlive-${VERSION}
CATEGORIES =	multimedia
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} GL GLU KF6Archive KF6Attica KF6Bookmarks
WANTLIB += KF6Codecs KF6ColorScheme KF6Completion KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6DBusAddons KF6FileMetaData KF6GuiAddons KF6I18n
WANTLIB += KF6IconThemes KF6ItemViews KF6JobWidgets KF6KIOCore
WANTLIB += KF6KIOFileWidgets KF6KIOGui KF6KIOWidgets KF6NewStuffCore
WANTLIB += KF6NewStuffWidgets KF6Notifications KF6NotifyConfig
WANTLIB += KF6Purpose KF6PurposeWidgets KF6Service KF6Solid KF6SonnetUi
WANTLIB += KF6TextWidgets KF6WidgetsAddons KF6XmlGui Qt6Concurrent
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Multimedia Qt6Network Qt6NetworkAuth
WANTLIB += Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick Qt6QuickControls2
WANTLIB += Qt6QuickWidgets Qt6Svg Qt6SvgWidgets Qt6Widgets Qt6Xml
WANTLIB += c m mlt++-7 mlt-7

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKDE_DOCS = yes

MODULES +=	lang/python

RUN_DEPENDS =	devel/kf6/breeze-icons \
		devel/kf6/qqc2-desktop-style \
		graphics/ffmpeg \
		misc/shared-mime-info \
		multimedia/dvdauthor \
		multimedia/frei0r-plugins \
		multimedia/mlt7,-gpl2 \
		sysutils/cdrtools

LIB_DEPENDS =	devel/kf6/attica \
		devel/kf6/karchive \
		devel/kf6/kbookmarks \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kfilemetadata \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knewstuff \
		devel/kf6/knotifications \
		devel/kf6/knotifyconfig \
		devel/kf6/kservice \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/purpose \
		devel/kf6/solid \
		devel/kf6/sonnet \
		multimedia/mlt7>=7.24.0 \
		x11/qt6/qtdeclarative \
		x11/qt6/qtmultimedia \
		x11/qt6/qtnetworkauth \
		x11/qt6/qtsvg

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_LibV4L2=Yes

TEST_IS_INTERACTIVE =	X11

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/kdenlive/scripts/

.include <bsd.port.mk>
