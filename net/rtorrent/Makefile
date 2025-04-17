COMMENT=		ncurses BitTorrent client based on libTorrent

DISTNAME=		rtorrent-0.10.0
EPOCH=			0
CATEGORIES=		net

HOMEPAGE=		https://rakshasa.github.io/rtorrent/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto curl curses m nghttp2 pthread
WANTLIB += ssl torrent>=21 z

COMPILER =		base-clang ports-gcc

SITES=			https://github.com/rakshasa/rtorrent-archive/raw/master/

BUILD_DEPENDS=		devel/cppunit
LIB_DEPENDS=		net/libtorrent>=0.13.4 \
			net/curl

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.71
CONFIGURE_ENV +=	LDFLAGS="-pthread -lexecinfo"
CONFIGURE_ARGS=		--disable-debug

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# uses std::bind2nd which was removed in c++17
CXXFLAGS +=		-std=c++14

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rtorrent
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rtorrent
	${INSTALL_DATA} ${WRKSRC}/doc/rtorrent.rc \
		${PREFIX}/share/examples/rtorrent/rtorrent.rc

.include <bsd.port.mk>
