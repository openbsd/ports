# $OpenBSD: Makefile,v 1.37 2013/03/11 11:35:45 espie Exp $

COMMENT-main=	cooperative file distribution system implemented in Python
COMMENT-gui=	graphical interface components for BitTorrent

VERSION=	4.4.0
DISTNAME=	BitTorrent-${VERSION}
PKGNAME-main=	${DISTNAME}
PKGNAME-gui=	BitTorrent-gui-${VERSION}
CATEGORIES=	net

REVISION-main=	11
REVISION-gui=	10

HOMEPAGE=	http://www.bittorrent.com/

# Custom
PERMIT_PACKAGE_CDROM=	may not sell without modification
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://download.bittorrent.com/dl/

MULTI_PACKAGES= -main -gui

MODULES=	lang/python
BUILD_DEPENDS=	devel/gettext

RUN_DEPENDS-gui=${PKGNAME-main}:net/BitTorrent \
		x11/py-gtk2>=2.6

NO_TEST=	Yes

post-configure:
	@perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g' ${WRKBUILD}/*.py
	@perl -pi -e 's,python,${MODPY_BIN},' ${WRKSRC}/makei18n.sh

.include <bsd.port.mk>
