COMMENT =	GUI configure tool for fcitx5

DISTNAME =	fcitx5-configtool-5.1.7
PKGNAME =	${DISTNAME:S/fcitx5/fcitx/}

CATEGORIES =	inputmethods

HOMEPAGE =	https://github.com/fcitx/fcitx5-configtool

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# GPLv2.0+
PERMIT_PACKAGE=	Yes

WANTLIB +=	${COMPILER_LIBCXX} Fcitx5Config Fcitx5Core Fcitx5Qt5DBusAddons
WANTLIB +=	Fcitx5Qt5WidgetsAddons Fcitx5Utils KF5ConfigCore KF5CoreAddons
WANTLIB +=	KF5Declarative KF5I18n KF5IconThemes KF5ItemViews KF5Package
WANTLIB +=	KF5Plasma KF5QuickAddons KF5Service KF5WidgetsAddons
WANTLIB +=	Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5QmlModels
WANTLIB +=	Qt5Quick Qt5Widgets Qt5X11Extras X11 c m xkbcommon
WANTLIB +=	xkbfile

SITES =			https://download.fcitx-im.org/fcitx5/fcitx5-configtool/
EXTRACT_SUFX =		.tar.zst

MODULES =		devel/kf5

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/kf5/kirigami2 \
			devel/kf5/kpackage \
			x11/qt5/qtquickcontrols2,-main \
			devel/iso-codes

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/kf5/kirigami2 \
			misc/shared-mime-info

LIB_DEPENDS =		devel/kf5/kdeclarative \
			devel/kf5/ki18n \
			devel/kf5/kitemviews \
			devel/kf5/plasma-framework \
			inputmethods/fcitx-qt \
			x11/qt5/qtx11extras

CONFIGURE_ARGS =	-DUSE_QT6=OFF

.include <bsd.port.mk>
