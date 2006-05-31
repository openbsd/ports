# $OpenBSD: Makefile,v 1.3 2006/05/31 06:26:15 naddy Exp $

COMMENT=		"Ncurses BitTorrent Client based on LibTorrent"

DISTNAME=		rtorrent-0.4.5
CATEGORIES=		net
HOMEPAGE=		http://libtorrent.rakshasa.no/

MAINTAINER=		Henrik Enberg <enberg@printf.se>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto m ncurses sigc-2.0.0.0 ssl stdc++ z

MASTER_SITES=		${HOMEPAGE}downloads/

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		torrent.5::net/libtorrent \
			curl.3::net/curl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
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
