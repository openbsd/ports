# $OpenBSD: Makefile,v 1.11 2005/06/20 21:19:18 naddy Exp $

COMMENT=	"cooperative file distribution system implemented in Python"
COMMENT-gui=	"graphical interface components for BitTorrent"

VERSION=	4.1.1
DISTNAME=	BitTorrent-${VERSION}
PKGNAME-gui=	BitTorrent-gui-${VERSION}
CATEGORIES=	net

HOMEPAGE=	http://www.bittorrent.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# Custom
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}dl/

MODULES=	lang/python

MULTI_PACKAGES=	-gui
SUBPACKAGE?=

.if !empty(SUBPACKAGE)
RUN_DEPENDS=	:${PKGNAME}:net/BitTorrent \
		::x11/py-gtk2 ::x11/hicolor-icon-theme
.endif

NO_REGRESS=	Yes

post-configure:
	@perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g' ${WRKBUILD}/bt*.py
	@for file in ${WRKBUILD}/bt*.py; do mv $$file $${file%.py}; done

post-install:
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/BitTorrent

.include <bsd.port.mk>
