# $OpenBSD: Makefile,v 1.6 2019/05/05 15:44:13 danj Exp $

COMMENT =		BitTorrent client with Qt interface
REVISION =		1

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Xml boost_system
WANTLIB += boost_system-mt c m torrent-rasterbar z
WANTLIB += GL Qt5DBus Qt5Gui Qt5Svg Qt5Widgets

LIB_DEPENDS +=		net/libtorrent-rasterbar \
			devel/boost \
			x11/qt5/qtsvg

RUN_DEPENDS +=		net/GeoIP \
			lang/python/2.7 \
			x11/gtk+3,-guic \
			devel/desktop-file-utils

pre-install:
	${SUBST_CMD} ${WRKSRC}/conf.pri

.include <bsd.port.mk>
