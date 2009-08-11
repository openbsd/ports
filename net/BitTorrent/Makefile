# $OpenBSD: Makefile,v 1.29 2009/08/11 23:47:14 martynas Exp $

COMMENT-main=	cooperative file distribution system implemented in Python
COMMENT-gui=	graphical interface components for BitTorrent

VERSION=	4.4.0
DISTNAME=	BitTorrent-${VERSION}
PKGNAME-main=	${DISTNAME}p6
PKGNAME-gui=	BitTorrent-gui-${VERSION}p6
CATEGORIES=	net

HOMEPAGE=	http://www.bittorrent.com/

# Custom
PERMIT_DISTFILES_CDROM=	may not sell without modification
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	may not sell without modification
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://download.bittorrent.com/dl/

MULTI_PACKAGES= -main -gui

MODULES=	lang/python
BUILD_DEPENDS=	::devel/gettext

RUN_DEPENDS-gui=:${PKGNAME-main}:net/BitTorrent \
		:py-gtk2->=2.6:x11/py-gtk2

NO_REGRESS=	Yes

post-configure:
	@perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g' ${WRKBUILD}/*.py
	@perl -pi -e 's,python,${MODPY_BIN},' ${WRKSRC}/makei18n.sh

post-install:
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/BitTorrent

.include <bsd.port.mk>
