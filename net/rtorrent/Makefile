# $OpenBSD: Makefile,v 1.48 2015/05/28 10:17:24 pascal Exp $

BROKEN-hppa =		undefined references to __sync atomic ops
BROKEN-mips64 =		undefined references to __sync atomic ops
BROKEN-sh =		undefined references to __sync atomic ops
BROKEN-i386 =		64-bit atomics (fetch_and_and, add_and_fetch)

COMMENT=		ncurses BitTorrent client based on libTorrent

DISTNAME=		rtorrent-0.9.4
EPOCH=			0
CATEGORIES=		net
REVISION=		0

HOMEPAGE=		http://libtorrent.rakshasa.no/

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto curl>=14 idn m ncursesw \
			pthread ssl stdc++ torrent>=21 z

MASTER_SITES=		${HOMEPAGE}downloads/

MODULES=		gcc4 devel/gettext

# SIGBUS during startup on sparc64 when built using gcc 4.2.1
# https://github.com/rakshasa/rtorrent/issues/28
MODGCC4_ARCHS=		sparc64
MODGCC4_LANGS=		c++

BUILD_DEPENDS=		devel/cppunit
LIB_DEPENDS=		net/libtorrent>=0.13.4 \
			net/curl

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV +=	LDFLAGS=-pthread
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-debug

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rtorrent
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rtorrent
	${INSTALL_DATA} ${WRKSRC}/doc/rtorrent.rc \
		${PREFIX}/share/examples/rtorrent/rtorrent.rc

.include <bsd.port.mk>
