# $OpenBSD: Makefile,v 1.8 2020/03/23 18:01:24 rsadowski Exp $

COMMENT =	KDE terminal emulator
DISTNAME =	konsole-${VERSION}
CATEGORIES =	editors x11

SHARED_LIBS +=  konsoleprivate            1.0 # 17.08

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5GlobalAccel KF5GuiAddons KF5I18n KF5IconThemes KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOWidgets KF5NewStuff KF5NewStuffCore
WANTLIB += KF5Notifications KF5NotifyConfig KF5Parts KF5Pty KF5Service
WANTLIB += KF5SonnetUi KF5TextWidgets KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus  Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Widgets Qt5Xml c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	devel/kf5/kinit
RUN_DEPENDS =	devel/kf5/kinit

LIB_DEPENDS =	devel/kf5/attica \
		devel/kf5/kglobalaccel \
		devel/kf5/kcodecs \
		devel/kf5/kbookmarks \
		devel/kf5/kcompletion \
		devel/kf5/kconfigwidgets \
		devel/kf5/kdbusaddons \
		devel/kf5/kiconthemes \
		devel/kf5/ki18n \
		devel/kf5/kparts \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kpty \
		devel/kf5/knotifyconfig \
		devel/kf5/kconfig \
		devel/kf5/kcrash \
		devel/kf5/kguiaddons \
		devel/kf5/knotifications \
		devel/kf5/ktextwidgets \
		devel/kf5/knewstuff \
		devel/kf5/kwindowsystem \
		devel/kf5/kcoreaddons \
		devel/kf5/kxmlgui

TEST_IS_INTERACTIVE =	X11
TEST_DEPENDS =		${BUILD_PKGPATH}

.include <bsd.port.mk>
