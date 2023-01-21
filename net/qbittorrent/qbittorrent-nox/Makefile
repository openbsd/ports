COMMENT =		BitTorrent client with web interface
PKGNAME =		qbittorrent-nox-${VER}

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Sql Qt5Xml
WANTLIB += boost_system-mt c crypto execinfo m ssl torrent-rasterbar
WANTLIB += z

LIB_DEPENDS +=		net/libtorrent-rasterbar \
			devel/boost

CONFIGURE_ARGS +=	-DGUI=OFF

.include <bsd.port.mk>
