# $OpenBSD: Makefile,v 1.24 2010/11/11 17:20:28 espie Exp $

COMMENT=		ncurses BitTorrent client based on libTorrent

DISTNAME=		rtorrent-0.8.6
CATEGORIES=		net

HOMEPAGE=		http://libtorrent.rakshasa.no/

MAINTAINER=		Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto iconv intl idn m ncurses sigc-2.0 ssl \
			stdc++ z torrent.>=17 curl.>=14

MASTER_SITES=		${HOMEPAGE}downloads/

LIB_DEPENDS=		::net/libtorrent \
			::net/curl

USE_LIBTOOL=		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-debug

post-build:
	@sed -e 's,@TRUEPREFIX@,${TRUEPREFIX},g' \
		< ${FILESDIR}/README.OpenBSD \
		> ${WRKBUILD}/README.OpenBSD

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rtorrent
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rtorrent
	${INSTALL_DATA} ${WRKBUILD}/README.OpenBSD \
		${PREFIX}/share/doc/rtorrent/README.OpenBSD
	${INSTALL_DATA} ${WRKSRC}/doc/rtorrent.rc \
		${PREFIX}/share/examples/rtorrent/rtorrent.rc

.include <bsd.port.mk>
