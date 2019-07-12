# $OpenBSD: Makefile,v 1.67 2019/07/12 20:48:47 sthen Exp $

COMMENT=		ncurses BitTorrent client based on libTorrent

DISTNAME=		rtorrent-0.9.6
REVISION=		8
EPOCH=			0
CATEGORIES=		net

HOMEPAGE=		https://rakshasa.github.io/rtorrent/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto curl curses m nghttp2 pthread
WANTLIB += ssl torrent>=21 z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		https://rtorrent.net/downloads/

BUILD_DEPENDS=		devel/cppunit
LIB_DEPENDS=		net/libtorrent>=0.13.4 \
			net/curl

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
CONFIGURE_ENV +=	LDFLAGS=-pthread
CONFIGURE_ARGS=		--disable-debug

CXXFLAGS +=		-std=c++11

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rtorrent
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rtorrent
	${INSTALL_DATA} ${WRKSRC}/doc/rtorrent.rc \
		${PREFIX}/share/examples/rtorrent/rtorrent.rc

# this patches *only* files containing tr1 to no longer refer to tr1
# we do it pre-patch, because autoconf passes right after us
pre-patch:
	find ${WRKDIST} -type f|xargs fgrep -lw tr1|xargs sed -i.bak -e 's,<tr1/,<,' -e 's/std::tr1/std/g' -e 's/tr1::placeholders::/std::placeholders::/g' -e 's/tr1::bind/std::bind/g'

.include <bsd.port.mk>
