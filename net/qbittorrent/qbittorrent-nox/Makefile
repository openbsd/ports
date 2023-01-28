COMMENT =		BitTorrent client with web interface
PKGNAME =		qbittorrent-nox-${VER}
REVISION =		2

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Network Qt6Sql Qt6Xml
WANTLIB += c crypto execinfo m ssl torrent-rasterbar z

BUILD_DEPENDS +=	devel/boost
LIB_DEPENDS +=		net/libtorrent-rasterbar

CONFIGURE_ARGS +=	-DGUI=OFF

.include <bsd.port.mk>
