COMMENT =	Utilities for graphical user interfaces
DISTNAME =	kguiaddons-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5GuiAddons		7.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5WaylandClient
WANTLIB += Qt5X11Extras X11 c m wayland-client xcb

RUN_DEPENDS =		devel/desktop-file-utils

BUILD_DEPENDS =		wayland/plasma-wayland-protocols

LIB_DEPENDS =		x11/qt5/qtx11extras \
			x11/qt5/qtwayland

# https://community.kde.org/Frameworks/6.0_Release_notes
CONFIGURE_ARGS +=	-DBUILD_GEO_SCHEME_HANDLER=OFF

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
