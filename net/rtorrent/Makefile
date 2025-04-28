COMMENT=		ncurses BitTorrent client based on libTorrent

DISTNAME=		rtorrent-0.10.0
REVISION=		0
EPOCH=			0
CATEGORIES=		net

HOMEPAGE=		https://rakshasa.github.io/rtorrent/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c cppunit curl curses m
WANTLIB += torrent

COMPILER =		base-clang ports-gcc

SITES=			https://github.com/rakshasa/rtorrent-archive/raw/master/

LIB_DEPENDS =		devel/cppunit \
			net/libtorrent>=0.13.4 \
			net/curl

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	LDFLAGS=-pthread
CONFIGURE_ARGS =	--disable-debug \
			--disable-execinfo

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# uses std::bind2nd which was removed in c++17
CXXFLAGS +=		-std=c++14
# silence build log spam
CXXFLAGS +=		-Wno-deprecated-declarations \
			-Wno-exceptions

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rtorrent
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rtorrent
	${INSTALL_DATA} ${WRKSRC}/doc/rtorrent.rc \
		${PREFIX}/share/examples/rtorrent/rtorrent.rc

.include <bsd.port.mk>
