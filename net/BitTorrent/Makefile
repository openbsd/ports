# $OpenBSD: Makefile,v 1.5 2004/08/04 19:14:30 xsa Exp $

COMMENT=	"cooperative file distribution system implemented in Python"
DISTNAME=	BitTorrent-3.4.2
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bittorrent/}

HOMEPAGE=	http://bitconjurer.org/BitTorrent/

# MIT
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	lang/python

post-configure:
	@perl -pi -e \
		's,/usr/bin/env python,/usr/bin/env python${MODPY_VERSION},g' \
	${WRKBUILD}/bt*.py	

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/BitTorrent
	${INSTALL_DATA} ${WRKSRC}/README.txt ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/BitTorrent

do-regress:
	cd ${WRKBUILD} && ${MODPY_BIN} ./bttest.py

.include <bsd.port.mk>
