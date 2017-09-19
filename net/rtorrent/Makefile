# $OpenBSD: Makefile,v 1.59 2017/09/19 18:28:27 dcoppa Exp $

COMMENT=		ncurses BitTorrent client based on libTorrent

DISTNAME=		rtorrent-0.9.6
REVISION=		3
EPOCH=			0
CATEGORIES=		net

HOMEPAGE=		https://rakshasa.github.io/rtorrent/

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto curl>=14 m ncursesw nghttp2 \
			pthread ssl ${COMPILER_LIBCXX} torrent>=21 z

MASTER_SITES=		http://rtorrent.net/downloads/

MODULES=		gcc4

# SIGBUS during startup on sparc64 when built using gcc 4.2.1
# https://github.com/rakshasa/rtorrent/issues/28
# arm: undefined reference to `__sync_add_and_fetch_4'
MODGCC4_ARCHS=		arm sparc64
MODGCC4_LANGS=		c++

BUILD_DEPENDS=		devel/cppunit
LIB_DEPENDS=		net/libtorrent>=0.13.4 \
			net/curl

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
CONFIGURE_ENV +=	LDFLAGS=-pthread
CONFIGURE_ARGS=		--disable-debug

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rtorrent
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rtorrent
	${INSTALL_DATA} ${WRKSRC}/doc/rtorrent.rc \
		${PREFIX}/share/examples/rtorrent/rtorrent.rc

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
# this patches *only* files containing tr1 to no longer refer to tr1
# we do it pre-patch, because autoconf passes right after us
pre-patch:
	find ${WRKDIST} -type f|xargs fgrep -lw tr1|xargs sed -i.bak -e 's,<tr1/,<,' -e 's/std::tr1/std/g' -e 's/tr1::placeholders::/std::placeholders::/g' -e 's/tr1::bind/std::bind/g'
CXXFLAGS +=	-std=c++11
.endif
.include <bsd.port.mk>
