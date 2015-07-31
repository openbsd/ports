# $OpenBSD: Makefile,v 1.49 2015/07/31 16:09:23 sthen Exp $

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
