# $OpenBSD: Makefile,v 1.10 2020/06/03 05:13:46 rsadowski Exp $

COMMENT =	UML Modeller
DISTNAME =	umbrello-${VERSION}
CATEGORIES =	x11 productivity
REVISION =	0

HOMEPAGE =	https://umbrello.kde.org/

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5GuiAddons
WANTLIB += KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets KF5KDELibs4Support
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets KF5Notifications
WANTLIB += KF5Parts KF5Service KF5Solid KF5SonnetUi KF5TextEditor
WANTLIB += KF5TextWidgets KF5UnitConversion KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Svg Qt5WebKit Qt5WebKitWidgets Qt5Widgets
WANTLIB += Qt5Xml c m xml2 xslt

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications \
		lang/python

RUN_DEPENDS =	math/graphviz

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
		devel/kf5/kdelibs4support \
		devel/kf5/kxmlgui \
		x11/qt5/qtwebkit \
		x11/qt5/qtsvg \
		textproc/libxslt \
		textproc/libxml

TEST_IS_INTERACTIVE =	X11

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/umbrello5/headings/

.include <bsd.port.mk>
