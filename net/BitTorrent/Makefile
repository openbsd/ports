# $OpenBSD: Makefile,v 1.16 2005/11/23 20:38:26 naddy Exp $

COMMENT=	"cooperative file distribution system implemented in Python"
COMMENT-gui=	"graphical interface components for BitTorrent"

VERSION=	4.2.0
DISTNAME=	BitTorrent-${VERSION}
PKGNAME-gui=	BitTorrent-gui-${VERSION}
CATEGORIES=	net

HOMEPAGE=	http://www.bittorrent.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# Custom
PERMIT_DISTFILES_CDROM=	"may not sell without modification"
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	"may not sell without modification"
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bittorrent/}

MODULES=	lang/python
BUILD_DEPENDS=	::devel/gettext

MULTI_PACKAGES=	-gui
SUBPACKAGE?=

.if !empty(SUBPACKAGE)
RUN_DEPENDS=	:${PKGNAME}:net/BitTorrent \
		::x11/py-gtk2 ::x11/hicolor-icon-theme
.endif

NO_REGRESS=	Yes

post-configure:
	@perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g' ${WRKBUILD}/*.py
	@perl -pi -e 's,python,${MODPY_BIN},' ${WRKSRC}/makei18n.sh

post-install:
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/BitTorrent

.include <bsd.port.mk>
