# $OpenBSD: Makefile,v 1.1.1.1 2018/06/08 04:40:20 rsadowski Exp $

COMMENT =	KDE terminal emulator
DISTNAME =	konsole-${VERSION}
CATEGORIES =	editors

SHARED_LIBS +=  konsoleprivate            0.0 # 17.08

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5DBusAddons KF5GuiAddons KF5I18n KF5IconThemes
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5Notifications
WANTLIB += KF5NotifyConfig KF5Parts KF5Pty KF5Service KF5SonnetUi
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Widgets Qt5Xml c m

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools \
		devel/kf5/kinit

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf5/kdoctools \
		devel/kf5/kinit \
		devel/gettext

LIB_DEPENDS =	devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
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
		devel/kf5/kwindowsystem \
		devel/kf5/kcoreaddons \
		devel/kf5/kxmlgui

TEST_IS_INTERACTIVE =	X11
TEST_DEPENDS =		${BUILD_PKGPATH}

.include <bsd.port.mk>
