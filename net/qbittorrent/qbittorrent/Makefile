COMMENT =		BitTorrent client with Qt interface

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6Sql Qt6Widgets Qt6Xml c crypto execinfo m ssl torrent-rasterbar
WANTLIB += z

MODULES =		lang/python

MODPY_BUILDDEP =	No
MODPY_TESTDEP =		No

BUILD_DEPENDS +=	x11/qt6/qtsvg

RUN_DEPENDS +=		x11/gtk+3,-guic \
			devel/desktop-file-utils

CONFIGURE_ARGS +=	-DDBUS=ON

.include <bsd.port.mk>
