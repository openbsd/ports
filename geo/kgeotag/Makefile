# $OpenBSD: Makefile,v 1.1.1.1 2022/01/04 06:28:02 rsadowski Exp $

COMMENT =	stand-alone photo geotagging program

V =		1.2.0
DISTNAME =	kgeotag-${V}
CATEGORIES =	geo x11

HOMEPAGE =	https://kgeotag.kde.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPL and many others
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5I18n KF5KExiv2 KF5WidgetsAddons KF5XmlGui Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5Positioning Qt5PrintSupport
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5WebChannel Qt5WebEngine
WANTLIB += Qt5WebEngineCore Qt5WebEngineWidgets Qt5Widgets Qt5Xml
WANTLIB += c m marblewidget-qt5

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kgeotag/${V}/}

MODULES =	devel/kf5

BUILD_DEPENDS =	devel/kf5/kdoctools \
		devel/gettext,-tools

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf5/kdoctools \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/ki18n \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		x11/kde-applications/libkexiv2 \
		x11/kde-applications/marble \
		x11/qt5/qtdeclarative \
		x11/qt5/qtlocation \
		x11/qt5/qtwebchannel \
		x11/qt5/qtwebengine

.include <bsd.port.mk>
