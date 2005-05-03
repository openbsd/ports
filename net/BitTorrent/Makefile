# $OpenBSD: Makefile,v 1.8 2005/05/03 09:47:59 alek Exp $

COMMENT=	"cooperative file distribution system implemented in Python"
DISTNAME=	BitTorrent-4.0.1
PKGNAME=	${DISTNAME}p2
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}dl/

HOMEPAGE=	http://www.bittorrent.com/

# Custom
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	lang/python

NO_REGRESS=	Yes

SCRIPTS=	btdownloadcurses btdownloadheadless btlaunchmany \
		btlaunchmanycurses btmaketorrent btreannounce \
		btrename btshowmetainfo bttrack

post-configure:
	@perl -pi -e \
		's,/usr/bin/env python,/usr/bin/env python${MODPY_VERSION},g' \
	${WRKBUILD}/bt*.py	
.for file in ${SCRIPTS}
	@mv ${WRKBUILD}/${file}.py ${WRKBUILD}/${file}
.endfor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/BitTorrent
	${INSTALL_DATA} ${WRKSRC}/README.txt ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/BitTorrent

.include <bsd.port.mk>
