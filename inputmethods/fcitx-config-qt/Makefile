COMMENT =	GUI configure tool for fcitx5

DISTNAME =	fcitx5-configtool-5.1.7
PKGNAME =	${DISTNAME:S/fcitx5/fcitx/}
REVISION =	1

CATEGORIES =	inputmethods

HOMEPAGE =	https://github.com/fcitx/fcitx5-configtool

# GPLv2.0+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Fcitx5Config Fcitx5Core Fcitx5Qt6DBusAddons
WANTLIB += Fcitx5Qt6WidgetsAddons Fcitx5Utils GL KF6ConfigCore
WANTLIB += KF6CoreAddons KF6I18n KF6IconThemes KF6ItemViews KF6KCMUtilsCore
WANTLIB += KF6KCMUtilsQuick KF6Svg KF6WidgetsAddons KirigamiPlatform
WANTLIB += Plasma Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6Quick Qt6Widgets X11 c m xkbcommon xkbfile

SITES =			https://download.fcitx-im.org/fcitx5/fcitx5-configtool/
EXTRACT_SUFX =		.tar.zst

MODULES =		devel/cmake x11/qt6

BUILD_DEPENDS =		devel/kf6/extra-cmake-modules \
			devel/gettext,-tools \
			devel/kf6/kpackage \
			devel/iso-codes

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/kf6/kdeclarative \
			misc/shared-mime-info

LIB_DEPENDS =		devel/kf6/kcmutils \
			devel/kf6/kconfig \
			devel/kf6/kcoreaddons \
			devel/kf6/ki18n \
			devel/kf6/kiconthemes \
			devel/kf6/kitemviews \
			devel/kf6/ksvg \
			devel/kf6/kwidgetsaddons \
			devel/kf6/kirigami \
			inputmethods/fcitx-qt \
			x11/kde-plasma/libplasma \
			x11/qt6/qtdeclarative \
			x11/xkbcommon

CONFIGURE_ARGS =	-DUSE_QT5=OFF
CONFIGURE_ARGS =	-DUSE_QT6=ON

.include <bsd.port.mk>
