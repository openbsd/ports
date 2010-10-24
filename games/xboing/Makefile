# $OpenBSD: Makefile,v 1.28 2010/10/24 21:19:03 ajacoutot Exp $

COMMENT=	blockout style game for X11

V=		2.4
DISTNAME=	xboing${V}
PKGNAME=	xboing-${V}
REVISION=	3

CATEGORIES=	games

HOMEPAGE=	http://www.techrescue.org/xboing/

# X Consortium
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext Xpm c m sndio

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=games/}

CONFIGURE_STYLE=imake
WRKDIST=	${WRKDIR}/xboing

USE_GROFF =	Yes
NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xboing
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/xboing/xboing.score

.include <bsd.port.mk>
