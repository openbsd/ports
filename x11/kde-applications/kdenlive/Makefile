# $OpenBSD $

BROKEN =	Crashes immediately when you add a clip to the timeline

#Qt5Webkit
USE_WXNEEDED =	Yes

COMMENT =	non-linear video editor for KDE
DISTNAME =	kdenlive-${VERSION}
CATEGORIES =	multimedia
REVISION =	1

WANTLIB += ${COMPILER_LIBCXX} GL GLU KF5Archive KF5Attica KF5Auth
WANTLIB += KF5Bookmarks KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5FileMetaData KF5GuiAddons KF5I18n
WANTLIB += KF5IconThemes KF5ItemViews KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOFileWidgets KF5KIOWidgets KF5NewStuff KF5NewStuffCore
WANTLIB += KF5Notifications KF5NotifyConfig KF5Purpose KF5PurposeWidgets
WANTLIB += KF5Service KF5Solid KF5SonnetUi KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Quick Qt5Script Qt5Svg Qt5WebKit Qt5WebKitWidgets
WANTLIB += Qt5Widgets Qt5Xml c m mlt mlt++


MODULES +=	x11/kde-applications

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

RUN_DEPENDS +=	devel/kf5/breeze-icons \
		devel/kf5/kinit \
		graphics/ffmpeg \
		misc/shared-mime-info \
		multimedia/dvdauthor \
		multimedia/frei0r-plugins \
		multimedia/mlt,-gpl2 \
		sysutils/cdrtools \
		x11/qt5/qtquickcontrols

LIB_DEPENDS +=	devel/kf5/attica \
		devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/kfilemetadata \
		devel/kf5/kguiaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/knotifications \
		devel/kf5/knotifyconfig \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/purpose \
		devel/kf5/solid \
		devel/kf5/sonnet \
		multimedia/mlt,-main \
		x11/qt5/qtdeclarative \
		x11/qt5/qtscript \
		x11/qt5/qtsvg \
		x11/qt5/qtwebkit

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_LibV4L2=Yes

.include <bsd.port.mk>
