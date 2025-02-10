USE_WXNEEDED =	Yes

COMMENT =	stand-alone photo geotagging program

V =		1.7.0
DISTNAME =	kgeotag-${V}
CATEGORIES =	geo x11

HOMEPAGE =	https://kgeotag.kde.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPL and many others
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KExiv2Qt6 KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6I18n KF6WidgetsAddons KF6XmlGui Qt6Core Qt6Core5Compat
WANTLIB += Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Positioning
WANTLIB += Qt6PrintSupport Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript
WANTLIB += Qt6Quick Qt6WebChannel Qt6WebEngineCore Qt6WebEngineWidgets
WANTLIB += Qt6Widgets Qt6Xml c m marblewidget-qt6

SITES =		${SITE_KDE:=stable/kgeotag/${V}/}
EXTRACT_SUFX =	.tar.xz

MODULES =	devel/kf6

BUILD_DEPENDS =	devel/kf6/kdoctools \
		devel/gettext,-tools

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf6/kdoctools \
		x11/gtk+4,-guic

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/ki18n \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		x11/kde-applications/marble \
		x11/qt6/qt5compat \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine \
		x11/kde-applications/kf6-libkexiv2

CONFIGURE_ARGS =	-DQT_MAJOR_VERSION=6

.include <bsd.port.mk>
