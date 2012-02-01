# $OpenBSD: Makefile,v 1.32 2012/02/01 11:24:46 dcoppa Exp $

BROKEN-sparc64 =	SIGBUS during startup when built with gcc 4.2.1

COMMENT=		ncurses BitTorrent client based on libTorrent

DISTNAME=		rtorrent-0.8.9
CATEGORIES=		net

HOMEPAGE=		http://libtorrent.rakshasa.no/

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto idn m ncursesw pthread \
			sigc-2.0 ssl stdc++ z torrent>=18 \
			curl>=14

MASTER_SITES=		${HOMEPAGE}downloads/

MODULES=		devel/gettext

BUILD_DEPENDS=		devel/cppunit
LIB_DEPENDS=		net/libtorrent>=0.12.9 \
			net/curl

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV +=	LDFLAGS=-pthread
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-debug

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rtorrent
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rtorrent
	${INSTALL_DATA} ${WRKSRC}/doc/rtorrent.rc \
		${PREFIX}/share/examples/rtorrent/rtorrent.rc
	${INSTALL_MAN} ${WRKSRC}/doc/rtorrent.1 \
		${PREFIX}/man/man1/rtorrent.1

.include <bsd.port.mk>
