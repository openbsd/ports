# $OpenBSD: Makefile,v 1.4 2018/06/29 22:16:26 espie Exp $

COMMENT =	KDE advanced text editor
DISTNAME =	kate-${VERSION}
CATEGORIES =	editors
REVISION =	2

HOMEPAGE =	https://kate-editor.org/

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Activities KF5Attica KF5Auth
WANTLIB += KF5Bookmarks KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5GuiAddons KF5I18n KF5IconThemes KF5ItemModels
WANTLIB += KF5ItemViews KF5JobWidgets KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOWidgets KF5NewStuff KF5NewStuffCore KF5Package
WANTLIB += KF5Parts KF5Plasma KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5TextEditor KF5TextWidgets KF5ThreadWeaver KF5Wallet
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5Script Qt5Sql Qt5Widgets
WANTLIB += Qt5Xml c m

MODULES +=	lang/python

BUILD_DEPENDS =	devel/kf5/kdoctools \
		devel/kf5/kinit \
		devel/kf5/kactivities \
		devel/kf5/syntax-highlighting \
		devel/gettext-tools

RUN_DEPENDS =	devel/kf5/kdoctools \
		devel/kf5/kinit \
		devel/kf5/kactivities \
		devel/kf5/syntax-highlighting \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/kguiaddons \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktexteditor \
		devel/kf5/kwallet \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/plasma-framework \
		devel/kf5/threadweaver

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
