# $OpenBSD: Makefile,v 1.16 2007/05/15 15:09:12 naddy Exp $

COMMENT=		"ncurses BitTorrent client based on libTorrent"

DISTNAME=		rtorrent-0.7.4
PKGNAME=		${DISTNAME}p0
CATEGORIES=		net
HOMEPAGE=		http://libtorrent.rakshasa.no/

MAINTAINER=		Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto iconv idn m ncurses sigc-2.0 ssl stdc++ z

MASTER_SITES=		${HOMEPAGE}downloads/

LIB_DEPENDS=		torrent.>=12::net/libtorrent \
			curl.>=5::net/curl

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--with-statfs \
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
