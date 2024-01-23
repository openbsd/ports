COMMENT =	Qt library and IM module for fcitx5

DISTNAME =	fcitx5-qt-5.1.4
PKGNAME =	${DISTNAME:S/fcitx5/fcitx/}

SHARED_LIBS +=	Fcitx5Qt5WidgetsAddons		1.0 # 0.0
SHARED_LIBS +=	Fcitx5Qt5DBusAddons		0.1 # 0.0
SHARED_LIBS +=	Fcitx5Qt6DBusAddons		0.1 # 0.0
SHARED_LIBS +=	Fcitx5Qt6WidgetsAddons		0.0 # 0.0

CATEGORIES =	inputmethods

HOMEPAGE =	https://fcitx-im.org/

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# BSD for plugins
# LGPL2.1+ for other files
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Fcitx5Utils GL Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Widgets Qt6Concurrent Qt6Core Qt6DBus Qt6Gui Qt6WaylandClient
WANTLIB += Qt6Widgets c m wayland-client wayland-cursor xcb xkbcommon

SITES =		https://download.fcitx-im.org/fcitx5/fcitx5-qt/

MODULES =	devel/kf5 \
		x11/qt6

BUILD_DEPENDS =		devel/gettext,-tools \
			inputmethods/fcitx \
			devel/iso-codes \
			devel/fmt

RUN_DEPENDS =		devel/desktop-file-utils \
			inputmethods/fcitx \
			misc/shared-mime-info

LIB_DEPENDS =		inputmethods/fcitx \
			x11/qt6/qtwayland

CONFIGURE_ARGS =	-DENABLE_QT4=OFF \
			-DENABLE_QT6=ON

.include <bsd.port.mk>
