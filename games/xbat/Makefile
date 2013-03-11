# $OpenBSD: Makefile,v 1.24 2013/03/11 11:07:41 espie Exp $
#

COMMENT=	XEVIOUS-like shooting game

DISTNAME=	xev111
PKGNAME=	xbat-1.11
REVISION =	2
CATEGORIES=	games

HOMEPAGE=	http://www.nemoto.ecei.tohoku.ac.jp/~wai/index_e.html

PERMIT_PACKAGE_CDROM=	possible copyright infringement
PERMIT_PACKAGE_FTP=	possible copyright infringement
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c m pthread-stubs xcb

MASTER_SITES=   http://www.nemoto.ecei.tohoku.ac.jp/~wai/Xbat/

CONFIGURE_STYLE=imake
WRKDIST=	${WRKDIR}/Xev111
ALL_TARGET=	xbat
NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/Xbat
	${INSTALL_DATA} ${WRKSRC}/Score/* ${PREFIX}/share/examples/Xbat

.include <bsd.port.mk>
