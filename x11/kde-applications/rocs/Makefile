# $OpenBSD: Makefile,v 1.3 2020/06/03 05:13:45 rsadowski Exp $

COMMENT =	graph theory IDE for KDE
DISTNAME =	rocs-${VERSION}
CATEGORIES =	games education
REVISION =	0

HOMEPAGE =	https://www.kde.org/applications/education/rocs/

SHARED_LIBS +=  rocsgraphtheory        1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5Archive KF5Auth
WANTLIB += KF5AuthCore KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5Declarative
WANTLIB += KF5I18n KF5ItemViews KF5JobWidgets KF5KIOCore KF5KIOWidgets
WANTLIB += KF5Package KF5Parts KF5Service KF5SonnetUi KF5TextEditor
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5QuickWidgets
WANTLIB += Qt5Script Qt5ScriptTools Qt5WebKit Qt5WebKitWidgets
WANTLIB += Qt5Widgets Qt5Xml Qt5XmlPatterns c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	devel/boost \
		x11/qt5/qtquickcontrols \
		x11/qt5/qtsvg
RUN_DEPENDS =	x11/qt5/qtquickcontrols \
		x11/qt5/qtsvg

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdeclarative \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/kpackage \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktexteditor \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet \
		x11/grantlee-qt5 \
		x11/qt5/qtdeclarative \
		x11/qt5/qtwebkit \
		x11/qt5/qtscript \
		x11/qt5/qtxmlpatterns

SUBST_VARS =	LIBrocsgraphtheory_VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/libgraphtheory/CMakeLists.txt

.include <bsd.port.mk>
