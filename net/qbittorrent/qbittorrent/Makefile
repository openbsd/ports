COMMENT =		BitTorrent client with Qt interface

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Sql Qt5Widgets Qt5Xml boost_system-mt c crypto
WANTLIB += execinfo m ssl torrent-rasterbar z

MODULES =		lang/python

MODPY_BUILDDEP =	No
MODPY_TESTDEP =		No

BUILD_DEPENDS +=	x11/qt5/qtsvg

LIB_DEPENDS +=		net/libtorrent-rasterbar \
			devel/boost

RUN_DEPENDS +=		x11/gtk+3,-guic \
			devel/desktop-file-utils

CONFIGURE_ARGS +=	-DDBUS=ON

.include <bsd.port.mk>
