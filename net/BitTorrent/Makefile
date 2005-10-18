# $OpenBSD: Makefile,v 1.13 2005/10/18 14:12:35 naddy Exp $

COMMENT=	"cooperative file distribution system implemented in Python"
COMMENT-gui=	"graphical interface components for BitTorrent"

VERSION=	4.1.6
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

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bittorrent/}
MASTER_SITES0=	http://grappa.unix-ag.uni-kl.de/~naddy/
DISTFILES=	${DISTNAME}.tar.gz
# pre-built file because our gettext tools are too old
DISTFILES+=	bt416-messages.pot:0

MODULES=	lang/python

MULTI_PACKAGES=	-gui
SUBPACKAGE?=

.if !empty(SUBPACKAGE)
RUN_DEPENDS=	:${PKGNAME}:net/BitTorrent \
		::x11/py-gtk2 ::x11/hicolor-icon-theme
.endif

NO_REGRESS=	Yes

EXTRACT_CASES=	*.pot) cp ${FULLDISTDIR}/$$archive ${WRKDIST}/messages.pot ;;

post-configure:
	@perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g' ${WRKBUILD}/*.py

post-install:
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/BitTorrent

.include <bsd.port.mk>
