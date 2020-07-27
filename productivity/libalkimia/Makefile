# $OpenBSD: Makefile,v 1.16 2020/07/27 16:30:20 rsadowski Exp $

COMMENT =	KDE financial data handling library
CATEGORIES =	productivity x11

V =		8.0.3
PKGNAME =	libalkimia-$V
DISTNAME =	alkimia-$V
REVISION =	0

SHARED_LIBS =  alkimia5  0.0 # 7.0.1


HOMEPAGE =	https://community.kde.org/Alkimia/libalkimia

MASTER_SITES =	${MASTER_SITE_KDE:=stable/alkimia/$V/}
EXTRACT_SUFX =	.tar.xz

# LGPLv2.1+
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5GuiAddons
WANTLIB += KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets KF5KDELibs4Support
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets KF5NewStuff
WANTLIB += KF5NewStuffCore KF5Notifications KF5Parts KF5Service
WANTLIB += KF5Solid KF5SonnetUi KF5TextWidgets KF5UnitConversion
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Qml
WANTLIB += Qt5WebKit Qt5WebKitWidgets Qt5Widgets Qt5Xml c gmp
WANTLIB += m

MODULES =	devel/kf5

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/gmp,-cxx \
		x11/qt5/qtquickcontrols

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/gmp,-cxx \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/gmp \
		devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdelibs4support \
		devel/kf5/kguiaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/knotifications \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kunitconversion \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		x11/qt5/qtdeclarative \
		x11/qt5/qtwebkit

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DBUILD_APPLETS=OFF

.include <bsd.port.mk>
