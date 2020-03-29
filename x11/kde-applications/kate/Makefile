# $OpenBSD: Makefile,v 1.11 2020/03/29 07:18:07 rsadowski Exp $

COMMENT =	KDE advanced text editor
DISTNAME =	kate-${VERSION}
CATEGORIES =	editors
REVISION =	0

HOMEPAGE =	https://kate-editor.org/

WANTLIB += ${COMPILER_LIBCXX} KF5Activities KF5Attica KF5Auth
WANTLIB += KF5AuthCore KF5Bookmarks KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5GuiAddons KF5I18n KF5IconThemes KF5ItemModels
WANTLIB += KF5ItemViews KF5JobWidgets KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOWidgets KF5NewStuff KF5NewStuffCore KF5Package
WANTLIB += KF5Parts KF5Plasma KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5TextEditor KF5TextWidgets KF5ThreadWeaver KF5Wallet
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Sql Qt5Widgets
WANTLIB += Qt5Xml c m

MODULES +=	x11/kde-applications \
		lang/python

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

BUILD_DEPENDS =	devel/kf5/kinit \
		devel/kf5/kactivities \
		devel/kf5/syntax-highlighting

RUN_DEPENDS =	devel/kf5/kinit \
		devel/kf5/kactivities \
		devel/kf5/sonnet,-aspell \
		devel/kf5/syntax-highlighting \
		x11/kde-applications/kio-extras \
		x11/kde-applications/konsole

LIB_DEPENDS =	devel/kf5/attica \
		devel/kf5/kactivities \
		devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/kguiaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/kpackage \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/kservice \
		devel/kf5/ktexteditor \
		devel/kf5/ktextwidgets \
		devel/kf5/kwallet \
		devel/kf5/kwallet \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/plasma-framework \
		devel/kf5/solid \
		devel/kf5/sonnet \
		devel/kf5/threadweaver

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
