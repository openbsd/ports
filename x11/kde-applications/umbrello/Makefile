# $OpenBSD: Makefile,v 1.2 2018/06/27 21:04:13 espie Exp $

COMMENT =	UML Modeller
DISTNAME =	umbrello-${VERSION}
CATEGORIES =	x11 productivity
REVISION =	0

HOMEPAGE =	https://umbrello.kde.org/

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5GuiAddons
WANTLIB += KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOFileWidgets KF5KIOWidgets KF5Notifications KF5Parts
WANTLIB += KF5Service KF5Solid KF5SonnetUi KF5TextEditor KF5TextWidgets
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Svg
WANTLIB += Qt5WebKit Qt5WebKitWidgets Qt5Widgets Qt5Xml c m xml2
WANTLIB += xslt

MODULES =	lang/python

BUILD_DEPENDS =	devel/gettext-tools \
		devel/kf5/kdelibs4support \
		devel/kf5/kdoctools \
		devel/kf5/kcrash

RUN_DEPENDS =	devel/kf5/kdoctools \
		devel/kf5/kcrash \
		x11/gtk+3,-guic \
		devel/desktop-file-utils \
		math/graphviz

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/karchive \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kiconthemes \
		devel/kf5/kparts \
		devel/kf5/kio \
		devel/kf5/ktexteditor \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		x11/qt5/qtwebkit \
		textproc/libxslt \
		textproc/libxml

TEST_IS_INTERACTIVE =	X11

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/umbrello5/headings/

.include <bsd.port.mk>
