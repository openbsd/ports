COMMENT =	GUI configure tool for fcitx5

V =		5.0.17
DISTNAME =	fcitx5-configtool-$V
PKGNAME =	fcitx-configtool-qt-$V

CATEGORIES =	inputmethods

HOMEPAGE =	https://github.com/fcitx/fcitx5-configtool

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# GPLv2.0+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Fcitx5Config Fcitx5Core Fcitx5Qt5DBusAddons
WANTLIB += Fcitx5Qt5WidgetsAddons Fcitx5Utils KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n KF5IconThemes KF5ItemViews KF5Package KF5Plasma
WANTLIB += KF5QuickAddons KF5Service KF5WidgetsAddons Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5QmlModels Qt5Quick
WANTLIB += Qt5Widgets Qt5X11Extras X11 c m xkbcommon xkbfile

SITES =			https://download.fcitx-im.org/fcitx5/fcitx5-configtool/
DIST_SUBDIR =		fcitx

MODULES =		devel/kf5

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/kf5/kirigami2 \
			devel/kf5/kpackage \
			x11/qt5/qtquickcontrols2,-main \
			devel/iso-codes

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/kf5/kirigami2 \
			misc/shared-mime-info

LIB_DEPENDS =		inputmethods/fcitx-qt \
			x11/qt5/qtx11extras \
			devel/kf5/plasma-framework \
			devel/kf5/kdeclarative \
			devel/kf5/ki18n \
			devel/kf5/kitemviews

CONFIGURE_ARGS =	-DCMAKE_PREFIX_PATH=${LOCALBASE}/lib/qt5/cmake

.include <bsd.port.mk>
