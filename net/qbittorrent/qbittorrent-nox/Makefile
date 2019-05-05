# $OpenBSD: Makefile,v 1.5 2019/05/05 15:44:13 danj Exp $

COMMENT =		BitTorrent client with web interface
PKGNAME =		qbittorrent-nox-${VER}
REVISION =		1

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Xml boost_system
WANTLIB += boost_system-mt c m torrent-rasterbar z

LIB_DEPENDS +=		net/libtorrent-rasterbar \
			devel/boost

CONFIGURE_ARGS +=	--disable-gui

pre-install:
	${SUBST_CMD} ${WRKSRC}/conf.pri

.include <bsd.port.mk>
