# $OpenBSD: Makefile,v 1.10 2006/12/16 12:22:34 espie Exp $

COMMENT=		"Ncurses BitTorrent Client based on LibTorrent"

DISTNAME=		rtorrent-0.6.4
CATEGORIES=		net
HOMEPAGE=		http://libtorrent.rakshasa.no/

MAINTAINER=		Henrik Enberg <enberg@printf.se>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto m ncurses sigc-2.0 ssl stdc++ z

MASTER_SITES=		${HOMEPAGE}downloads/

LIB_DEPENDS=		torrent.>=10::net/libtorrent \
			curl.>=3::net/curl

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-kqueue \
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
