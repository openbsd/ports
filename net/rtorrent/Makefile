COMMENT =		ncurses BitTorrent client based on libTorrent

V =			0.16.20
DISTNAME =		rtorrent-$V
CATEGORIES =		net

HOMEPAGE =		https://rakshasa.github.io/rtorrent/

EPOCH =			0

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += c crypto curl curses execinfo m nghttp2 nghttp3 ngtcp2
WANTLIB += ngtcp2_crypto_libressl ssl torrent z

COMPILER =		base-clang ports-gcc

SITES =			https://github.com/rakshasa/rtorrent/releases/download/v$V/

LIB_DEPENDS =		net/libtorrent \
			net/curl
TEST_DEPENDS =		devel/cppunit

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	LDFLAGS=-pthread
CONFIGURE_ARGS =	--disable-debug

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# silence build log spam
CXXFLAGS +=		-Wno-deprecated-declarations \
			-Wno-exceptions

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rtorrent
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rtorrent
	${INSTALL_DATA} ${WRKSRC}/doc/rtorrent.rc \
		${PREFIX}/share/examples/rtorrent/rtorrent.rc

.include <bsd.port.mk>
