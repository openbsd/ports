COMMENT =		BitTorrent client with web interface
PKGNAME =		qbittorrent-nox-${VER}
REVISION =		1

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Sql Qt5Xml
WANTLIB += c crypto execinfo m ssl torrent-rasterbar z

BUILD_DEPENDS +=	devel/boost
LIB_DEPENDS +=		net/libtorrent-rasterbar

CONFIGURE_ARGS +=	-DGUI=OFF

.include <bsd.port.mk>
