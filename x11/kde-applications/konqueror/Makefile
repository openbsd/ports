# $OpenBSD: Makefile,v 1.1.1.1 2020/06/13 05:04:13 rsadowski Exp $

COMMENT =	KDE File Manager & Web Browser
DISTNAME =	konqueror-${VERSION}
CATEGORIES =	www

SHARED_LIBS +=  KF5Konq              0.0 # 5.97.0
SHARED_LIBS +=  konquerorprivate     0.0 # 5.97.0

WANTLIB += ${COMPILER_LIBCXX} ICE KF5Archive KF5Auth KF5AuthCore
WANTLIB += KF5Bookmarks KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5GuiAddons KF5I18n KF5IconThemes KF5ItemViews
WANTLIB += KF5JS KF5JobWidgets KF5KCMUtils KF5KDELibs4Support
WANTLIB += KF5KHtml KF5KIOCore KF5KIOFileWidgets KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Notifications KF5Parts KF5Pty KF5Service KF5Solid
WANTLIB += KF5SonnetCore KF5SonnetUi KF5Su KF5TextWidgets KF5UnitConversion
WANTLIB += KF5Wallet KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Positioning
WANTLIB += Qt5PrintSupport Qt5Qml Qt5Quick Qt5Script Qt5TextToSpeech
WANTLIB += Qt5WebChannel Qt5WebEngineCore Qt5WebEngineWidgets
WANTLIB += Qt5Widgets Qt5X11Extras Qt5Xml SM X11 Xext c m z

MODULES +=	x11/kde-applications

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcmutils \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/kdelibs4support \
		devel/kf5/kdesu \
		devel/kf5/kguiaddons \
		devel/kf5/khtml \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/kjs \
		devel/kf5/knotifications \
		devel/kf5/kparts \
		devel/kf5/kpty \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kunitconversion \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		x11/qt5/qtdeclarative \
		x11/qt5/qtlocation \
		x11/qt5/qtscript \
		x11/qt5/qtspeech \
		x11/qt5/qtwebchannel \
		x11/qt5/qtwebengine \
		x11/qt5/qtx11extras

.include <bsd.port.mk>
