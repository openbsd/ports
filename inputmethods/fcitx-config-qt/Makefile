COMMENT =	GUI configure tool for fcitx5

V =		5.0.12
DISTNAME =	fcitx5-configtool-$V
PKGNAME =	fcitx-configtool-qt-$V
REVISION =	0

CATEGORIES =	inputmethods

HOMEPAGE =	https://github.com/fcitx/fcitx5-configtool

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# GPLv2.0+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Fcitx5Config Fcitx5Core Fcitx5Qt5DBusAddons Fcitx5Qt5WidgetsAddons
WANTLIB += Fcitx5Utils KF5CoreAddons KF5I18n KF5ItemViews KF5QuickAddons
WANTLIB += KF5WidgetsAddons Qt5Qml Qt5QmlModels Qt5Quick Qt5X11Extras
WANTLIB += X11 c m xkbcommon xkbfile

MASTER_SITES =		https://download.fcitx-im.org/fcitx5/fcitx5-configtool/
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
			devel/kf5/kdeclarative \
			devel/kf5/ki18n \
			devel/kf5/kitemviews

CONFIGURE_ARGS =	-DCMAKE_PREFIX_PATH=${LOCALBASE}/lib/qt5/cmake

.include <bsd.port.mk>
