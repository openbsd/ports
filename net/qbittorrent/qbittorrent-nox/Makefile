# $OpenBSD: Makefile,v 1.3 2019/01/04 22:20:49 mariani Exp $

COMMENT =		BitTorrent client with web interface
PKGNAME =		qbittorrent-nox-${VER}

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Xml boost_system
WANTLIB += boost_system-mt c m torrent-rasterbar z

LIB_DEPENDS +=		net/libtorrent-rasterbar \
			devel/boost

CONFIGURE_ARGS +=	--disable-gui

pre-install:
	${SUBST_CMD} ${WRKSRC}/conf.pri

.include <bsd.port.mk>
