# Qt6WebEngine
USE_WXNEEDED =	Yes

COMMENT =	non-linear video editor for KDE
DISTNAME =	kdenlive-${VERSION}
CATEGORIES =	multimedia
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} GL GLU Imath-3_2 KF6Archive KF6Attica
WANTLIB += KF6Bookmarks KF6Codecs KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6DBusAddons KF6FileMetaData KF6GuiAddons
WANTLIB += KF6I18n KF6IconThemes KF6ItemViews KF6JobWidgets KF6KIOCore
WANTLIB += KF6KIOFileWidgets KF6KIOGui KF6KIOWidgets KF6NewStuffCore
WANTLIB += KF6NewStuffWidgets KF6Notifications KF6NotifyConfig
WANTLIB += KF6Purpose KF6PurposeWidgets KF6Service KF6Solid KF6SonnetUi
WANTLIB += KF6TextWidgets KF6WidgetsAddons KF6XmlGui Qt6Concurrent
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Multimedia Qt6Network Qt6NetworkAuth
WANTLIB += Qt6OpenGL Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript
WANTLIB += Qt6Quick Qt6QuickControls2 Qt6QuickWidgets Qt6Svg Qt6SvgWidgets
WANTLIB += Qt6Widgets Qt6Xml avcodec avformat avutil c m mlt++-7
WANTLIB += mlt-7 opentime opentimelineio swresample

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKDE_DOCS = yes

MODULES +=	lang/python

BILD_DEPENDS =	multimedia/mlt7,-gpl2>=7.28.0

RUN_DEPENDS =	devel/kf6/breeze-icons \
		devel/kf6/qqc2-desktop-style \
		graphics/ffmpeg \
		misc/shared-mime-info \
		multimedia/dvdauthor \
		multimedia/frei0r-plugins \
		multimedia/mlt7,-gpl2>=7.28.0 \
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
		multimedia/mlt7>=7.28.0 \
		multimedia/opentimelineio \
		graphics/ffmpeg \
		math/imath \
		x11/qt6/qtdeclarative \
		x11/qt6/qtmultimedia \
		x11/qt6/qtnetworkauth \
		x11/qt6/qtsvg

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_LibV4L2=Yes \
			-DFETCH_OTIO=OFF

TEST_IS_INTERACTIVE =	X11

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/kdenlive/scripts/

.include <bsd.port.mk>
