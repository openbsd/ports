# $OpenBSD: Makefile,v 1.21 2013/03/11 11:46:17 espie Exp $

COMMENT=	minimal window manager

DISTNAME=	wmx-7
CATEGORIES=	x11

HOMEPAGE=	http://www.all-day-breakfast.com/wmx/
MASTER_SITES=	${HOMEPAGE}

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_FTP=	no license

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xpm Xrender c expat fontconfig
WANTLIB += freetype m pthread-stubs stdc++ xcb z

CONFIGURE_STYLE=	gnu

NO_TEST=	Yes

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/wmx ${PREFIX}/bin
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmx
	@${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/wmx

.include <bsd.port.mk>
