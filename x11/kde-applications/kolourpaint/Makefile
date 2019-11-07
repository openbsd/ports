# $OpenBSD: Makefile,v 1.1.1.1 2019/11/07 10:09:56 rsadowski Exp $

COMMENT =	KDE raster image editor
DISTNAME =	kolourpaint-${VERSION}
CATEGORIES =	graphics


SHARED_LIBS +=  kolourpaint_lgpl           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5GuiAddons KF5I18n KF5IconThemes KF5ItemViews
WANTLIB += KF5JobWidgets KF5KDELibs4Support KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOWidgets KF5Notifications KF5Parts KF5Sane KF5Service
WANTLIB += KF5Solid KF5SonnetUi KF5TextWidgets KF5UnitConversion
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets
WANTLIB += Qt5Xml c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS +=	devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdelibs4support \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifications \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kunitconversion \
		devel/kf5/kwindowsystem \
		devel/kf5/solid \
		devel/kf5/sonnet \
		x11/kde-applications/libksane

SUBST_VARS =	LIBkolourpaint_lgpl_VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lgpl/CMakeLists.txt

.include <bsd.port.mk>
