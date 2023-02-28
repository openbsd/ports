COMMENT =		BitTorrent client with web interface
PKGNAME =		qbittorrent-nox-${VER}

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Network Qt6Sql Qt6Xml
WANTLIB += c crypto execinfo m ssl torrent-rasterbar z

CONFIGURE_ARGS +=	-DGUI=OFF

.include <bsd.port.mk>
