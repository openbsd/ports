COMMENT =	Qt library and IM module for fcitx5

DISTNAME =	fcitx5-qt-5.1.9
PKGNAME =	${DISTNAME:S/fcitx5/fcitx/}
REVISION =	3

SHARED_LIBS +=	Fcitx5Qt6DBusAddons		0.1 # 0.0
SHARED_LIBS +=	Fcitx5Qt6WidgetsAddons		0.0 # 0.0

CATEGORIES =	inputmethods

HOMEPAGE =	https://fcitx-im.org/

# BSD for plugins
# LGPL2.1+ for other files
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Fcitx5Utils GL Qt6Concurrent Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6WaylandClient Qt6Widgets c m wayland-client
WANTLIB += wayland-cursor xcb xkbcommon

SITES =		https://download.fcitx-im.org/fcitx5/fcitx5-qt/
EXTRACT_SUFX =		.tar.zst

MODULES =		devel/cmake x11/qt6

BUILD_DEPENDS =		devel/kf6/extra-cmake-modules \
			devel/gettext,-tools \
			inputmethods/fcitx \
			devel/iso-codes \
			devel/fmt

RUN_DEPENDS =		devel/desktop-file-utils \
			inputmethods/fcitx \
			misc/shared-mime-info

LIB_DEPENDS =		inputmethods/fcitx \
			wayland/wayland \
			x11/xkbcommon

CONFIGURE_ARGS =	-DENABLE_QT4=OFF \
			-DENABLE_QT5=OFF \
			-DENABLE_QT6=ON

.include <bsd.port.mk>
