# $OpenBSD: Makefile,v 1.30 2020/07/19 19:53:10 rsadowski Exp $

COMMENT =	planetarium simulator for KDE

DISTNAME =	kstars-3.4.3
EPOCH =		0

CATEGORIES =	astro education

HOMEPAGE =	https://edu.kde.org/kstars/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5I18n KF5ItemViews
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets
WANTLIB += KF5NewStuff KF5NewStuffCore KF5Notifications KF5NotifyConfig
WANTLIB += KF5Plotting KF5Service KF5Solid KF5WidgetsAddons KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5DataVisualization
WANTLIB += Qt5Gui Qt5Network Qt5PrintSupport Qt5Qml Qt5Quick Qt5Sql
WANTLIB += Qt5Svg Qt5WebSockets Qt5Widgets Qt5Xml c cfitsio gio-2.0
WANTLIB += glib-2.0 gobject-2.0 intl m qt5keychain raw secret-1
WANTLIB += wcs z

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kstars/}

MODULES =		devel/kf5

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/kf5/kdoctools \
			math/eigen3 \
			x11/qt5/qtquickcontrols \
			x11/xplanet

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/kf5/breeze-icons \
			devel/kf5/kdoctools \
			x11/gtk+3,-guic \
			x11/qt5/qtquickcontrols \
			x11/xplanet

LIB_DEPENDS =		astro/wcslib \
			devel/kf5/kauth \
			devel/kf5/kbookmarks \
			devel/kf5/kcodecs \
			devel/kf5/kcompletion \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcrash \
			devel/kf5/ki18n \
			devel/kf5/kio \
			devel/kf5/kitemviews\
			devel/kf5/knewstuff \
			devel/kf5/knotifications \
			devel/kf5/knotifyconfig \
			devel/kf5/kplotting \
			devel/kf5/kservice \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kxmlgui \
			devel/kf5/solid \
			graphics/libraw \
			math/cfitsio>=3.450 \
			security/qtkeychain \
			x11/qt5/qtdatavis3d \
			x11/qt5/qtdeclarative \
			x11/qt5/qtsvg \
			x11/qt5/qtwebsockets

# not ported
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_INDI=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_AstrometryNet=ON

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
