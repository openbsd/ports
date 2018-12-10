# $OpenBSD: Makefile,v 1.1.1.1 2018/12/10 16:00:27 rsadowski Exp $

COMMENT =	KDE interactive physics simulator
DISTNAME =	step-${VERSION}
CATEGORIES =	education math

HOMEPAGE =	https://www.kde.org/applications/education/step

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5Bookmarks KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5GuiAddons KF5I18n KF5IconThemes
WANTLIB += KF5ItemViews KF5JS KF5JobWidgets KF5KDELibs4Support
WANTLIB += KF5KHtml KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets
WANTLIB += KF5NewStuff KF5NewStuffCore KF5Notifications KF5Parts
WANTLIB += KF5Plotting KF5Service KF5Solid KF5SonnetUi KF5TextWidgets
WANTLIB += KF5UnitConversion KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5OpenGL Qt5PrintSupport Qt5Widgets Qt5Xml c cln gsl
WANTLIB += gslcblas m qalculate

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools \
		math/eigen3 \
		x11/qt5/qtsvg

RUN_DEPENDS =	devel/kf5/kdoctools \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS +=	devel/gsl \
		devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdelibs4support \
		devel/kf5/kguiaddons \
		devel/kf5/khtml \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/kjs \
		devel/kf5/knewstuff \
		devel/kf5/kplotting \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		math/libqalculate

.include <bsd.port.mk>
