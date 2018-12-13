# $OpenBSD: Makefile,v 1.2 2018/12/13 19:53:24 sthen Exp $

COMMENT =		BitTorrent client with web interface
PKGNAME =		qbittorrent-nox-${VER}
REVISION =		0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Xml boost_system
WANTLIB += boost_system-mt c m torrent-rasterbar z

LIB_DEPENDS +=		net/libtorrent-rasterbar \
			devel/boost

CONFIGURE_ARGS +=	--disable-gui

pre-install:
	${SUBST_CMD} ${WRKSRC}/conf.pri

.include <bsd.port.mk>
